import mysql.connector

try:
    mydb = mysql.connector.connect(
            host="localhost"
            user="Daniel_Komolafe"
            password="Deekay123$")

    cursor = mydb.cursor()

    cursor.execute("""
            CREATE DATABASE IF NOT EXIST alx_book_store;
            """)
    mydb.commit()

    print("Database 'alx_book_store' created successfully!")

    cursor.close()
    mydb.close()

except Exception:
    print("Error creating Database")
