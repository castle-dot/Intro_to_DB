import mysql.connector
from mysql.connector import Error

def create_database():
    try:
        
        connection = mysql.connector.connect(
            host="localhost",
            user="root",
            password="JesusisLord123@123"  
        )

        if connection.is_connected():
            cursor = connection.cursor()
            # create database (only if it doesn’t already exist)
            cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
            print("Database 'alx_book_store' created successfully!")

    except Error as e:
        print(f"Error while connecting to MySQL: {e}")

    finally:
        # close cursor and connection
        if connection.is_connected():
            cursor.close()
            connection.close()
            print("MySQL connection is closed.")

if __name__ == "__main__":
    create_database()
