import mysql.connector # paket mysql-connector - nicht paket mysql-connector-python

myDB = mysql.connector.connect(
    host='mysql01.manitu.net',
    user='u39344',
    password='wCKaV5gkUJrN',
    port='3306',
    database='db39344'
)

# the cursor is used to execute statements and return data from database.
mycursor = myDB.cursor()

mycursor.execute('SELECT * From tab_berat') # tab_berat, users

# return a list of tuples
tab_berat = mycursor.fetchall()

for user in tab_berat:
    print(user)
    print('zeile: ' + user[1])

######
# mysql.connector.connect() - methodenübersicht
# user          - username
# password
# database
# host
# port          - 3306 üblicherweise
# autocommit    - False, transaction automatisch oder nicht
# raw           - False, result convert to python types