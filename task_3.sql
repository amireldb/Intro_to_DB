import mysql.connector
USE alx_book_store;

mydb = mysql.connector.connect(
host = "localhost",
user = "root" ,
password = "Aa#01207036888" ,
database="alx_book_store"
)
mycursor = mydb.cursor()
mycursor.execute(" SHOW TABLES")
for db in mycursor :
    print(db)
mycursor.close()
mydb.close()
