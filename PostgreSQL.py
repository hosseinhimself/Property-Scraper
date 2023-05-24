import psycopg2


class Database:
    def __init__(self, host, port, database, user, password):
        self.host = host
        self.port = port
        self.database = database
        self.user = user
        self.password = password
        self.connection = None

    def connect(self):
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

    def execute_query(self, query):
        try:
            cursor = self.connection.cursor()
            cursor.execute(query)
            self.connection.commit()
            print("Query executed successfully")
        except psycopg2.Error as e:
            print("Error executing query:", e)

    def create_table(self, table_name, columns):
        query = f"CREATE TABLE {table_name} ({columns})"
        self.execute_query(query)

    def insert_data(self, table_name, values):
        query = f"INSERT INTO {table_name} VALUES {values}"
        self.execute_query(query)

    def close(self):
        if self.connection:
            self.connection.close()
            print("Connection closed")

