import MySQLdb
import threading
import requests
import re
import os
from bs4 import BeautifulSoup

myheaders = {
    'User-Agent': 'Discogs crawler 1.0',
}

def exec_commit(db, cursor, command):
    try:
        # Execute the SQL command.
        cursor.execute(command)
        # Commit the changes in the database.
        db.commit()
    except:
        # Rollback in case there is any error.
        db.rollback()

def crawl(country, filename):
    if not os.path.exists('./' + filename):
        file = open(filename, "w")
        i = 1
        numpages = 40
        needhack = False
        sortway = 'asc'
        if country == 'Montenegro':
            numpages = 1
        elif country == 'Slovenia':
            numpages = 20
        elif country == 'Croatia':
            numpages = 53
            needhack = True
        elif country == 'Bosnia+%26+Herzegovina':
            numpages = 10
        elif country == 'Macedonia':
            numpages = 11

        while i <= numpages:
            url = "https://www.discogs.com/search/?limit=250&type=release&country_exact=" + country + "&sort=title%2C" + sortway + "&page=" + str(i)
            response = requests.get(url, headers = myheaders)
            #print(i) # debug
            page = str(BeautifulSoup(response.content, "html5lib"))
            releases = re.findall(r'href=\"/.*/release/[0-9]+\"', page)
            j = False
            for link in releases:
                if j:
                    file.write(link + '\n')
                j = not j
            #print(len(releases))
            if (len(releases) == 0): i -= 1
            i += 1
            if (i > 40) and needhack:
                i = 1
                numpages -= 40
                sortway = 'desc'
        file.close()
    print(country + " done!")

def parse(filename, db):
    with open("", "r") as f:
        for line in f:
            url = "http://www.discogs.com" + line[6:-2]
            response = requests.get(url, headers = myheaders)
            page = str(BeautifulSoup(response.content, "html5lib"))
            for r in re.findall(r'&amp;year=[0-9]+', page):
                for year in re.findall(r'[0-9]+',r):
                    print(year)

# Crawl the website for music.

#crawl("Serbia", "Serbia")
#crawl("Montenegro", "Montenegro")
#crawl("Slovenia", "Slovenia")
#crawl("Croatia", "Croatia")
#crawl("Bosnia+%26+Herzegovina", "Bosnia")
#crawl("Macedonia", "Macedonia")

threads = []
t1 = threading.Thread(target=crawl, args=("Serbia", "Serbia", ))
t2 = threading.Thread(target=crawl, args=("Montenegro", "Montenegro", ))
t3 = threading.Thread(target=crawl, args=("Slovenia", "Slovenia", ))
t4 = threading.Thread(target=crawl, args=("Croatia", "Croatia", ))
t5 = threading.Thread(target=crawl, args=("Bosnia+%26+Herzegovina", "Bosnia", ))
t6 = threading.Thread(target=crawl, args=("Macedonia", "Macedonia", ))
threads.append(t1)
threads.append(t2)
threads.append(t3)
threads.append(t4)
threads.append(t5)
threads.append(t6)
t1.start()
t2.start()
t3.start()
t4.start()
t5.start()
t6.start()

## Open a database connection.
#db = MySQLdb.connect(host="eestech-challenge-2018.mysql.database.azure.com", user="jnikolov@eestech-challenge-2018", passwd="1234ABcd", port=3306, database="eestech")
#
## Prepare a cursor object using cursor() method.
#cursor = db.cursor()
#
## Try to execute a command.
#exec_commit(db, cursor, """insert into releases(name,format,country,released) values(%s,%s,%s,%d)"""%("'testname'","'testformat'","'testcountry'",12345))
#
## Get all releases.
#cursor.execute("""select * from releases;""")
#print(cursor.fetchall())
#
## Remove all releases.
#exec_commit(db, cursor, """delete from releases;""")
#
## Get all releases.
#cursor.execute("""select * from releases;""")
#print(cursor.fetchall())
#
## Disconnect from the server.
#db.close()