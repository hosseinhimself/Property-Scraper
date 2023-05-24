import re
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By

'''driver = webdriver.Firefox()

url = "https://kilid.com/buy/tehran-region5?listingTypeId=1&location=246745&sort=DATE_DESC&page=2"

driver.get(url)

product_names = driver.find_elements(By.CLASS_NAME, "kilid-listing-card")
print(product_names)
# Process the extracted data
for item in product_names:
    links = item.get_attribute('href')
    titles = [title.text.strip() for title in item.find_elements(By.CLASS_NAME, "title")][0].split('/')
    prices = [price.text.strip() for price in item.find_elements(By.CLASS_NAME, "price-primary")][0]
    location = [address.text.strip() for address in item.find_elements(By.CLASS_NAME, "address")][0]
    features = [feature.text.strip() for feature in item.find_elements(By.CLASS_NAME, "feature")][0].split('\n')
    agency_names = [name.text.strip() for name in item.find_elements(By.CLASS_NAME, "agency-name")][0]

    print(titles)
    print(prices)
    print(location)
    print(features)
    print(agency_names)
    print(links)
    print("---------")

driver.quit()
'''

def price_to_toman(text):
    pattern = r"(\d+(\.\d+)?)\s+(میلیون|میلیارد)"
    matches = re.findall(pattern, text)
    for match in matches:
        try:
            price = float(match[0])
        except:
            print(text)
            print('price:',match[0])
            return None

        if match[-1] == 'میلیون':
            price *= 1000000

        elif match[-1] == 'میلیارد':
            price *= 1000000000

    return price


def scrap_into_dictionary(url):
    driver = webdriver.Firefox()
    property_dict = {}
    item_number = 1
    for page_number in range(1, 2):
        url = url + str(page_number)
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

            property_dict[item_number] = {
                'id': link.split('/')[-1],
                'link': link,
                'price': price_to_toman(price),
                'location': location,
                'usage': usage,
                'meterage': int(meterage),
                'rooms': int(rooms),
                'parking': int(parking),
                'agency_name': agency_name
            }

            item_number += 1

    return property_dict

url = "https://kilid.com/buy/tehran-region5?listingTypeId=1&location=246745&sort=DATE_DESC&page="
dictt = scrap_into_dictionary(url)

print(dictt)

for i in dictt.values():
    print()