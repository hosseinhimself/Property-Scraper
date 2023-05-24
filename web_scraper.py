import re
import time
from selenium import webdriver
from PostgreSQL import Database
from selenium.webdriver.common.by import By


def price_to_toman(text):
    price = None
    pattern = r"(\d+(\.\d+)?)\s+(میلیون|میلیارد)"
    matches = re.findall(pattern, text)
    for match in matches:
        try:
            price = float(match[0])
        except:
            return None

        if match[-1] == 'میلیون':
            price *= 1000000

        elif match[-1] == 'میلیارد':
            price *= 1000000000

    return price


def scrap_into_dictionary(url_template, pages):
    driver = webdriver.Firefox()
    property_dict = {}
    item_number = 1
    for page_number in range(1, pages + 1):
        print(page_number)
        url = url_template + str(page_number)
        driver.get(url)
        all_items = driver.find_elements(By.CLASS_NAME, "kilid-listing-card")

        for item in all_items:
            link = item.get_attribute('href')
            title = [title.text.strip() for title in item.find_elements(By.CLASS_NAME, "title")][0].split('/')
            price = [price.text.strip() for price in item.find_elements(By.CLASS_NAME, "price-primary")][0]
            location = [address.text.strip() for address in item.find_elements(By.CLASS_NAME, "address")][0]
            features = [feature.text.strip() for feature in item.find_elements(By.CLASS_NAME, "feature")][0].split('\n')
            usage = features[0]
            meterage = 0
            rooms = 0
            parking = 0
            for feature in features:
                if 'متر' in feature:
                    meterage = feature.split()[0]
                if 'خواب' in feature:
                    rooms = feature.split()[0]
                if 'پارکینگ' in feature:
                    parking = feature.split()[0]

            agency_name = [name.text.strip() for name in item.find_elements(By.CLASS_NAME, "agency-name")][0]

            price_amount = price_to_toman(price)


            property_dict[item_number] = {
                'id': link.split('/')[-1],
                'link': link,
                'price': price_amount,
                'location': location,
                'usage': usage,
                'meterage': int(meterage),
                'rooms': int(rooms),
                'parking': int(parking),
                'agency_name': agency_name
            }

            item_number += 1
        time.sleep(5)

    return property_dict


if __name__ == "__main__":
    url = "https://kilid.com/buy/tehran-region5?listingTypeId=1&location=246745&sort=DATE_DESC&page="
    all_results = scrap_into_dictionary(url_template=url, pages=10)

    db = Database(host='127.0.0.1', port=5432, database='kilid_test_db', user='hosseinmh', password='ASD!@#asd123')
    db.connect()

    columns = '''
    id SERIAL PRIMARY KEY,
    link VARCHAR(200),
    price DECIMAL,
    location VARCHAR(50),
    usage VARCHAR(20),
    meterage INTEGER,
    rooms INTEGER,
    parking INTEGER,
    agency_name VARCHAR(100)
    '''
    db.create_table(table_name='properties', columns=columns)
    id_list = []
    for property in all_results.values():

        # Insert data into the table with format: (ID, link, price, location, usage, meterage, rooms, parking, agency_name)
        value = property['id']
        if value not in id_list:
            values = str(tuple(property.values())).replace('None','NULL')
            db.insert_data(table_name='properties', values= values)
            id_list.append(value)
        else:
            print(value, 'exists')

    db.close()
