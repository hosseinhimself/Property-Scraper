from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By

driver = webdriver.Firefox()

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
