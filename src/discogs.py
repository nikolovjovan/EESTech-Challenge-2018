import MySQLdb

db = MySQLdb.connect(host="eestech-challenge-2018.mysql.database.azure.com", user="jnikolov@eestech-challenge-2018", passwd="1234ABcd", port=3306, database="eestech")

cursor = db.cursor()

try:
    cursor.execute("""insert into releases(name,format,country,released) values('%s','%s','%s',%d)"""%('testname1','testformat1','testcountry1',12345))
    db.commit()
except:
    db.rollback()

res = cursor.execute("""select * from releases;""")

print(cursor.fetchall())