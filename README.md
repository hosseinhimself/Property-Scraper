# Property Scraper and PostgreSQL Database Interaction

This Python script allows for web scraping property data from a specific URL template and storing it in a PostgreSQL database. It utilizes Selenium for web scraping and interacts with a PostgreSQL database to store the scraped property information.

## Table of Contents

- [Overview](#overview)
- [Dependencies](#dependencies)
- [Setup](#setup)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Overview

This script consists of two main parts:

1. **Web Scraping**: Utilizes Selenium to scrape property information from a specified URL template containing property listings.

2. **Database Interaction**: Interacts with a PostgreSQL database to store the scraped property data. It provides functions to create tables, insert data, execute queries, and retrieve data as DataFrames.

## Dependencies

To run this script, you need the following dependencies:

- **Python 3.x**
- **psycopg2**: PostgreSQL adapter for Python
- **pandas**: Data manipulation library
- **Selenium**: Web scraping library
- **GeckoDriver**: WebDriver for Firefox (used by Selenium)

You can install these dependencies using pip:

```bash
pip install psycopg2 pandas selenium
```

## Setup

1. **Install Dependencies**: Ensure you have the required dependencies installed.

2. **GeckoDriver Installation**:
   - Download the appropriate version of GeckoDriver for your system from [GeckoDriver releases](https://github.com/mozilla/geckodriver/releases).
   - Add the GeckoDriver executable to your system's PATH.

3. **Configure PostgreSQL**:
   - Set up a PostgreSQL server and have the necessary credentials (host, port, database name, username, and password).

4. **Update Configuration**:
   - Open the script and update the PostgreSQL connection details in the `if __name__ == "__main__":` section.

## Usage

1. Run the script to scrape property data and store it in the PostgreSQL database.

```bash
python main_process.py
```

## Contributing

Feel free to contribute to this project by opening issues or submitting pull requests.

## License

This project is licensed under the [MIT License](LICENSE).

---

Feel free to modify and adapt this README to fit the specifics of your project and code.