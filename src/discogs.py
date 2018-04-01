import MySQLdb
import threading
import requests
import re
import os
from bs4 import BeautifulSoup

myheaders = {
    'User-Agent': 'Discogs crawler 1.0',
}

# Execute a SQL command and commit.
def exec_commit(db, cursor, command):
    try:
        # Execute the SQL command.
        cursor.execute(command)
        # Commit the changes in the database.
        db.commit()
    except:
        # Rollback in case there is any error.
        db.rollback()
    return

# Crawl the page for the specified country and push to a file.
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
    return

# Parse the pages from the files.
def parse(country, filename, db):
    if not os.path.exists('./' + filename):
        print(filename + " does not exist!")
    else:
        with open(filename, "r") as f:
            for line in f:
                url = "http://www.discogs.com" + line[6:-2]
                print('\n' + url)
                response = requests.get(url, headers = myheaders)
                page = str(BeautifulSoup(response.content, "html5lib"))
                for r in re.findall(r'<span itemprop=\"name\">[\n].*', page):
                    print("Name: " + r[67:]) # Name

                print("\nFormats:")
                for r in re.findall(r'format_exact=.*</a>', page):
                    for formats in re.findall(r'>.*<',r):
                        print(formats[1:-1]) # Format

                print("\nCountry: " + country)

                print("\nReleased/Year: ")
                for r in re.findall(r'&amp;year=[0-9]+', page):
                    for year in re.findall(r'[0-9]+',r):
                        print(year) # Released/Year

                print("\nCredits:")
                for r in re.findall(r'/artist/.*\">.*</a>', page):
                    for credit in re.findall(r'>[^<]*</a>',r):
                        print(credit[1:-4]) # Single Credit

                print("\nSongs:")
                songs = []
                for r in re.findall(r'tracklist_track_title\"[^<]*</span>', page):
                    for song in re.findall(r'>[^<]*</span>',r):
                        songs.insert(len(songs), song[1:-7]) # Single Song Name
                i = 0
                for duration in re.findall(r'<meta content=\"([^\"]*)\" itemprop=\"duration\".*', page):
                    print(songs[i] + " " + duration)
                    i += 1

                print("\nGenres:")
                for r in re.findall(r'a href=\"/genre/.*>.*</a>', page):
                    for genre in re.findall(r'>[^>]*</a>',r):
                        print(genre[1:-4]) # Single Genre

                print("\nStyles:")
                for r in re.findall(r'a href=\"/style/.*>.*</a>', page):
                    for style in re.findall(r'>[^>]*</a>',r):
                        print(style[1:-4]) # Single Style
    return

# Crawl the website for music and outputs to files.
def crawl_all():
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
    return

# Parses all the links and outputs to the SQL database.
def parse_all():
    # Open a database connection.
    db = MySQLdb.connect(host="eestech-challenge-2018.mysql.database.azure.com", user="jnikolov@eestech-challenge-2018", passwd="1234ABcd", port=3306, database="eestech")

    threads = []
    t1 = threading.Thread(target=parse, args=("Serbia", "Serbia", db, ))
    t2 = threading.Thread(target=parse, args=("Montenegro", "Montenegro", db, ))
    t3 = threading.Thread(target=parse, args=("Slovenia", "Slovenia", db, ))
    t4 = threading.Thread(target=parse, args=("Croatia", "Croatia", db, ))
    t5 = threading.Thread(target=parse, args=("Bosnia & Herzegovina", "Bosnia", db, ))
    t6 = threading.Thread(target=parse, args=("Macedonia", "Macedonia", db, ))
    threads.append(t1)
    threads.append(t2)
    threads.append(t3)
    threads.append(t4)
    threads.append(t5)
    threads.append(t6)
#    t1.start()
    t2.start()
#    t3.start()
#    t4.start()
#    t5.start()
#    t6.start()

    # Disconnect from the server.
    db.close()
    return

# Open a database connection.
db = MySQLdb.connect(host="eestech-challenge-2018.mysql.database.azure.com", user="jnikolov@eestech-challenge-2018", passwd="1234ABcd", port=3306, database="eestech")

# Try parse Montenegro...
parse("Montenegro", "Montenegro", db)

# Disconnect from the server.
db.close()