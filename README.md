
# Property Scraper and PostgreSQL Database Interaction

This Python project was done as a technical task for the role of a Data Scientist at Kilid, focusing on web scraping property data and integrating with a PostgreSQL database for efficient data storage and analysis.

## Project Overview

The core of this project comprises two essential components:

1. **Web Scraping**: Leveraging Selenium, this part of the script efficiently scrapes property information from a defined URL template featuring property listings.

2. **Database Interaction**: The project interacts seamlessly with a PostgreSQL database, enabling storage of the scraped property data. This includes functions for table creation, data insertion, executing queries, and retrieving data in the form of DataFrames.

## Dependencies

To successfully run this Python script, the following dependencies are crucial:

- **Python 3.x**
- **psycopg2**: A PostgreSQL adapter for Python
- **pandas**: A library for data manipulation
- **Selenium**: A web scraping library
- **GeckoDriver**: WebDriver for Firefox, employed by Selenium

You can effortlessly install these dependencies via pip using the following command:

```bash
pip install psycopg2 pandas selenium
```

## Setup Instructions

To set up and configure the project, follow these steps:

1. **Dependency Installation**:
   - Ensure that the required dependencies are properly installed.

2. **GeckoDriver Installation**:
   - Download the appropriate version of GeckoDriver suitable for your system from the [GeckoDriver releases](https://github.com/mozilla/geckodriver/releases).
   - Incorporate the GeckoDriver executable into your system's PATH.

3. **PostgreSQL Configuration**:
   - Set up a PostgreSQL server and ensure you possess the essential credentials, including host, port, database name, username, and password.

4. **Update Configuration**:
   - Navigate to the script and update the PostgreSQL connection details in the `if __name__ == "__main__":` section accordingly.

## Usage Guidelines

To utilize the script effectively, simply execute the following command:

```bash
python main_process.py
```

This command will initiate the process of scraping property data and subsequently store it in the designated PostgreSQL database for further analysis and exploration.
