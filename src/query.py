import MySQLdb

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

# Open a database connection.
db = MySQLdb.connect(host="eestech-challenge-2018.mysql.database.azure.com", user="jnikolov@eestech-challenge-2018", passwd="1234ABcd", port=3306, database="pdb", charset="utf8")

# Prepare a cursor object using cursor() method.
cursor = db.cursor()

cursor.execute("""
               select name, count(name) as count
               from genres
               group by name
               """)
print("2.a)\n" + str(cursor.fetchall()))

cursor.execute("""
               select name, count(name) as count
               from styles
               group by name
               """)
print("2.b)\n" + str(cursor.fetchall()))

cursor.execute("""
               select name, count(name) as count
               from releases
               group by name
               having count(name) >=
               (
               select count(name)
               from releases
               group by name
               order by count(name) desc
               limit 9,1
               )
               order by count(name) desc
               """)
print("2.c)\n" + str(cursor.fetchall()))

cursor.execute("""
               select name, count(name) as count
               from credits
               group by name
               having count(name) >=
               (
               select count(name)
               from credits
               group by name
               order by count(name) desc
               limit 49,1
               )
               order by count(name) desc
               """)
print("2.d.1)\n" + str(cursor.fetchall()))

# The database does not contain all the necessary attributes for querying vocals and writing&arrangements.
# The following code specifies the queries which could be used if the database contained the required attributes.

#cursor.execute("""
#               select name, count(name) as count
#               from credits
#               where vocals = 1
#               group by name
#               having count(name) >=
#               (
#               select count(name)
#               from credits
#               group by name
#               order by count(name) desc
#               limit 49,1
#               )
#               order by count(name) desc
#               """)

#cursor.execute("""
#               select name, count(name) as count
#               from credits
#               where wanda = 1
#               group by name
#               having count(name) >=
#               (
#               select count(name)
#               from credits
#               group by name
#               order by count(name) desc
#               limit 49,1
#               )
#               order by count(name) desc
#               """)

cursor.execute("""
               select s.name, r.format, r.country, r.released, g.name, st.name, count(s.name)
               from songs s
               join releases r on s.ReleaseID = r.ReleaseID
               join genres g on s.ReleaseID = g.ReleaseID
               join styles st on s.ReleaseID = st.ReleaseID
               order by count(s.name) desc
               """)

print("2.e)\n" + str(cursor.fetchall()))

cursor.execute("""
               select
               sum(released between 1950 and 1959) as num1,
               sum(released between 1960 and 1969) as num2,
               sum(released between 1970 and 1979) as num3,
               sum(released between 1980 and 1989) as num4,
               sum(released between 1990 and 1999) as num5,
               sum(released between 2000 and 2009) as num6,
               sum(released between 2010 and 2019) as num7
               from releases
               """)
print("3.a)\n" + str(cursor.fetchall()))

cursor.execute("""
               select name, count(name) as count
               from genres
               group by name
               having count(name) >=
               (
               select count(name)
               from genres
               group by name
               order by count(name) desc
               limit 5,1
               )
               order by count(name) desc
               """)
print("3.b)\n" + str(cursor.fetchall()))

cursor.execute("""
               select cnt1, cnt2, cnt3, cnt4, cnt5, cnt6
               from
               (
               select count(*) as cnt1
               from songs
               where strcmp(duration, 'PT0H01M31S') = -1
               ) table1
               join
               (
               select count(*) as cnt2
               from songs
               where strcmp(duration, 'PT0H01M30S') = 1 and strcmp(duration, 'PT0H03M01S') = -1
               ) table2
               join
               (
               select count(*) as cnt3
               from songs
               where strcmp(duration, 'PT0H03M00S') = 1 and strcmp(duration, 'PT0H04M01S') = -1
               ) table3
               join
               (
               select count(*) as cnt4
               from songs
               where strcmp(duration, 'PT0H04M00S') = 1 and strcmp(duration, 'PT0H05M01S') = -1
               ) table4
               join
               (
               select count(*) as cnt5
               from songs
               where strcmp(duration, 'PT0H05M00S') = 1 and strcmp(duration, 'PT0H06M01S') = -1
               ) table5
               join
               (
               select count(*) as cnt6
               from songs
               where strcmp(duration, 'PT0H06M00S') = 1
               ) table6
               """)
print("3.c)\n" + str(cursor.fetchall()))

cursor.execute("""
               select count(HCount) as whatever
               from
               (
               select count(releaseid) as HCount
               from genres
               group by releaseid
               ) mytable
               group by HCount
               """)
print("3.e)\n" + str(cursor.fetchall()))

# Disconnect from the server.
db.close()