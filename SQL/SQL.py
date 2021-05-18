import sqlite3

# more details: https://www.pythoncentral.io/introduction-to-sqlite-in-python/ 

database_name = './Movies.db'
#./ looking in the current directory (directory you are running the script)

# n.b. do make sure that the browser is closed ... 
with sqlite3.connect(database_name) as db:
    cursor = db.cursor()

    pattern = 'The%'
    cursor.execute('select id, title from movies where title like ?', (pattern,))

    for row in cursor: 
        print('{0}:\t{1}'.format(row[0], row[1]))   # 0: id; 1: title

db.close()

 # can also use fetch or fetchall - cursors are generally one-way though

# if you're not using with, do remember to use db.close()
