import mysql.connector

try:
    mydb = mysql.connector.connect(
    host = "localhost",
    user = "root" ,
    password = "Aa#01207036888" 
    )
    mycursor = mydb.cursor()
    mycursor.execute(" CREATE DATABASE IF NOT EXISTS alx_book_store")
    print("Database 'alx_book_store' created successfully!")
except mysql.connector.Error as errr:
    print("erroooor :",errr)
finally:
    mycursor.close
    mydb.close


