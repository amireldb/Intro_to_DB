import mysql.connector

mydb = mysql.connector.connect(
host = "localhost",
user = "root" ,
password = "Aa#01207036888" ,
database="alx_book_store"
)
mycursor = mydb.cursor()
mycursor.execute(" SELECT COLUMN_NAME,COLUMN_TYPE, IS_NULLABLE,    COLUMN_KEY,   COLUMN_DEFAULT,   EXTRAFROM   INFORMATION_SCHEMA.COLUMNS WHERE AND TABLE_NAME = 'Books'")
for db in mycursor :
    print(db)
mycursor.close()
mydb.close()


