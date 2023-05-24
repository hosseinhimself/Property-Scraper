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

'''
    ------------------ OUTPUT ------------------
    
    price            count              location                                     
    بلوار فردوس غربی        26  6269230769.230769
    فردوس                   19  9966111111.111111
    پونک شمالی              16      10476875000.0
    بلوار فردوس شرقی        15       6120000000.0
    سازمان برنامه جنوبی     10       7055000000.0
    پونک جنوبی               8       8710000000.0
    جنت اباد جنوبی           8       7328750000.0
    سازمان برنامه شمالی      8       9743750000.0
    شهر زیبا                 6  9213333333.333334
    سازمان برنامه مرکزی      5       7848000000.0
    شهران جنوبی              5       6756000000.0
    جنت اباد مرکزی           4       6050000000.0
    جنت اباد                 2      13740000000.0
    اباذر                    2      12150000000.0
    باغ فیض                  1       9100000000.0
    شهران                    1       6650000000.0
    شهران شمالی              1       6520000000.0
    ارم                      1      11300000000.0
    بیمه                     1       6000000000.0
    شهرک پرواز               1      11000000000.0

'''
