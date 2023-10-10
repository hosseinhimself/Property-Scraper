import pandas as pd
from PostgreSQL import Database

if __name__ == "__main__":
    db = Database(host='127.0.0.1', port=5432, database='kilid_test_db', user='hosseinmh', password='ASD!@#asd123')
    db.connect()
    table_name = 'properties'
    df = db.get_table_as_dataframe(table_name)

    counts = df['location'].value_counts()
    averages = df.groupby('location')['price'].mean().sort_values(ascending=False)
    df2 = pd.merge(counts, averages, right_index=True, left_index=True)
    print(df2)

