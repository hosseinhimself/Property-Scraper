import re
import psycopg2
from selenium import webdriver
from selenium.webdriver.common.by import By


class PostgreSQLDatabase:
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


def price_to_toman(text):
    pattern = r"(\d+(\.\d+))?\s+(میلیون|میلیارد)"
    matches = re.findall(pattern, text)
    for match in matches:
        price = float(match[0])

        if match[1] == 'میلیون':
            price *= 1000000

        elif match[1] == 'میلیارد':
            price *= 1000000000

    return price


def scrap_into_dictionary(url):
    driver = webdriver.Firefox()
    property_dict = {}
    item_number = 1
    for page_number in range(1, 11):
        url = url + str(page_number)
        driver.get(url)
        all_items = driver.find_elements(By.CLASS_NAME, "kilid-listing-card")

        for item in all_items:
            link = item.get_attribute('href')
            title = [title.text.strip() for title in item.find_elements(By.CLASS_NAME, "title")][0].split('/')
            price = [price.text.strip() for price in item.find_elements(By.CLASS_NAME, "price-primary")][0]
            location = [address.text.strip() for address in item.find_elements(By.CLASS_NAME, "address")][0]
            features = [feature.text.strip() for feature in item.find_elements(By.CLASS_NAME, "feature")][0].split('\n')
            agency_name = [name.text.strip() for name in item.find_elements(By.CLASS_NAME, "agency-name")][0]

            property_dict[item_number] = {
                'link': link,
                'title': title,
                'price': price_to_toman(price),
                'location': location,
                'features': features,
                'agency_name': agency_name
            }

            item_number += 1

    return property_dict









