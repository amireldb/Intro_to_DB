import mysql.connector

mydb = mysql.connector.connect(
host = "localhost",
user = "root" ,
password = "Aa#01207036888" 
)
mycursor = mydb.cursor()
mycursor.execute(" SHOW DATABASE ")
for db in mycursor :
    print(db)
mycursor.close
mydb.close


