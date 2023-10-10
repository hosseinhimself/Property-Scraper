# Required Libraries
import psycopg2  # PostgreSQL database adapter
import pandas as pd  # Data manipulation library

# Database class for interacting with PostgreSQL
class Database:
    def __init__(self, host, port, database, user, password):
        self.host = host
        self.port = port
        self.database = database
        self.user = user
        self.password = password
        self.connection = None  # Initialize a connection object as None

    def connect(self):
        '''
        Establish a connection to the PostgreSQL database.
        '''
        try:
            self.connection = psycopg2.connect(
                host=self.host,
                port=self.port,
                database=self.database,
                user=self.user,
                password=self.password
            )
            print("Connected to PostgreSQL")
        except psycopg2.Error as e:
            print("Error connecting to PostgreSQL:", e)

    def get_table_as_dataframe(self, table_name):
        '''
        Fetch data from the specified table and return as a DataFrame.
        '''
        query = f"SELECT * FROM {table_name};"
        try:
            cursor = self.connection.cursor()
            cursor.execute(query)
            columns = [desc[0] for desc in cursor.description]
            data = cursor.fetchall()
            df = pd.DataFrame(data, columns=columns)
            return df
        except psycopg2.Error as e:
            print("Error retrieving table as DataFrame:", e)
            return None

    def execute_query(self, query):
        '''
        Execute the provided SQL query.
        '''
        try:
            cursor = self.connection.cursor()
            cursor.execute(query)
            self.connection.commit()
            print("Query executed successfully")
        except psycopg2.Error as e:
            print("Error executing query:", e)

    def create_table(self, table_name, columns):
        '''
        Create a table with the specified name and columns.
        '''
        query = f"CREATE TABLE {table_name} ({columns})"
        self.execute_query(query)

    def insert_data(self, table_name, values):
        '''
        Insert data into the specified table.
        '''
        query = f"INSERT INTO {table_name} VALUES {values}"
        self.execute_query(query)

    def close(self):
        '''
        Close the database connection if it is open.
        '''
        if self.connection:
            self.connection.close()
            print("Connection closed")
