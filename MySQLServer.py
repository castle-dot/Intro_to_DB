import mysql.connector
from mysql.connector import Error

try:
    # Connect to MySQL server (not a specific DB yet)
    conn = mysql.connector.connect(
        host="localhost",
        user="root",
        password="cowmilkdogeaten2134"
    )

    if conn.is_connected():
        cursor = conn.cursor()
        cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
        print("Database 'alx_book_store' created successfully!")

except mysql.connector.Error as err:
    print(f"MySQL Error: {err}")

finally:
    if conn.is_connected():
        cursor.close()
        conn.close()

