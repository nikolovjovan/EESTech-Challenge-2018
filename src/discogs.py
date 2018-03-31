import MySQLdb

def exec_commit(db, cursor, command):
    try:
        # Execute the SQL command.
        cursor.execute(command)
        # Commit the changes in the database.
        db.commit()
    except:
        # Rollback in case there is any error.
        db.rollback()

# Open a database connection.
db = MySQLdb.connect(host="eestech-challenge-2018.mysql.database.azure.com", user="jnikolov@eestech-challenge-2018", passwd="1234ABcd", port=3306, database="eestech")

# Prepare a cursor object using cursor() method.
cursor = db.cursor()

# Try to execute a command.
exec_commit(db, cursor, """insert into releases(name,format,country,released) values(%s,%s,%s,%d)"""%("'testname1'","'testformat1'","'testcountry1'",12345))

# Get all releases.
cursor.execute("""select * from releases;""")
print(cursor.fetchall())

# Remove all releases.
exec_commit(db, cursor, """delete from releases;""")

# Get all releases.
cursor.execute("""select * from releases;""")
print(cursor.fetchall())

# Disconnect from the server.
db.close()