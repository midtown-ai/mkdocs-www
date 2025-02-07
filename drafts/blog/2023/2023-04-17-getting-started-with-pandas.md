---
draft: true
# readingtime: 15
slug: pandas-introduction
title: Getting started with Pandas

authors:
  - emmanuel
#   - florian
#   - oceanne

categories:
  - Algorithms

date:
  created: 2023-04-17
  updated: 2023-04-17

description: This is the post description

# --- Sponsors only
# link:
#   - tests/pdf_hook.md
#   - tests/youtube_hook.md
#   - Widget: tests/widgets.md
# pin: false
# tags:
#   - FooTag
#   - BarTag
---

# Getting started with Pandas

<!-- end-of-excerpt -->

# Links
 
  * [https://github.com/guipsamora/pandas_exercises/](https://github.com/guipsamora/pandas_exercises/)
  * docs - [https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.DataFrame.to_sql.html](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.DataFrame.to_sql.html)

# Panda

 ```
df['Lag_1'] = df['Hardcover']            # Create a new column based on an existing one
df['Lag_1'] = df['Hardcover'].shift(1)   # Same, but shift column-rows down by one (Lag Feature)
 ```

 * [https://lab.rtscloud.in/#/](https://lab.rtscloud.in/#/)

 ```
import panda as pd


iris.columns

iris.head(25)
iris.tail(25)

groupeddata = iris.groupby('variety')  # GRoupby one (or more than 1 column)
for groupname, data in groupeddata:
	print(groupname)                   # SETOSA, VIGINICA, 
	print(data)


# Aggregate function
# Variety is preserved (beginning of row)
#  Label of columns label1: label2 or list_of_labels_2
groupeddata.agg({"petal.length":"min", "petal.width":["min","max","median"]})

jsondata = pd.read_json("https://jsonplaceholder.typicode.com/todos")
jsondata       
# returns table with index_number, userId, Id, title, completed

# Save a dataframe in many different formats
jsondata.to_<tab>       
jsondata.to_csv("C://data//jsondata.csv", index=False)
jsondata.to_xml("C://data//jsondata.xml", index=False)


# NaN = Not a number, but NaN of of type 'float' ==> type of column = float!

# Join
student=pd.read_excell("C://data/student.xlsx")
dept = pd.read_excel("C://data/dept.xlsx")
student.head()          # rollno, student_name, dept_ident
dept.head()             # dept_id, dept_name
# Inner join
# Match value left_on and right_on (even if slightly differnet types, i.e. float vs integer)
student = pd.merge(student,dept, left_on="dept_ident", right_on="dept_id")

# Left join
# Everything from left table comes including entries with no departments!
studept = pd.merge(student,dept, left_on="dept_ident", right_on="dept_id", how='left')
# Right join
# Even if there are no students in a department, the department will show (with NaN)
studept = pd.merge(student,dept, left_on="dept_ident", right_on="dept_id", how='right')
# Outer join
# = right and left join 
studept = pd.merge(student,dept, left_on="dept_ident", right_on="dept_id", how='outer')


# Drop a column + drop a column in place!
df = iris.drop('new_variety', axis=1)             # iris is not changed
iris.drop('new_variety', axis=1, inplace=True)    # iris is changed

help(iris.drop)
 ```
 * [https://github.com/guipsamora/pandas_exercises/blob/master/01_Getting_%26_Knowing_Your_Data/Occupation/Exercises.ipynb](https://github.com/guipsamora/pandas_exercises/blob/master/01_Getting_%26_Knowing_Your_Data/Occupation/Exercises.ipynb)

 ```
users = pd.read_csv('https://raw.githubusercontent.com/justmarkham/DAT8/master/data/u.user', sep='|', index_col='user_id')
users = pd.read_csv('https://raw.githubusercontent.com/justmarkham/DAT8/master/data/u.user', sep='|').set_index('user_id')

# Number of observations
users.shape[0]

# Number of columns + names
users.shape[1]
users.columns

user.index

uesrs.dtypes

# Select columns
users.occupation
users['occupation']

# Unique occupations
users.occupation.nunique()

# Occupation ordered frequency + ...
users.occupation.value_counts()
users.occupation.value_counts().count()     # Unique occupations
users.occupation.value_counts().head()      # Top 5
users.age.value_counts().tail()             # Bottom 5: 7, 10, 11, 66 and 73 years -> only 1 occurrence

# Statistics on columns
users.describe()                   # count, mean, std, min, 25%, 50%, 75%, max (numeric columns only)
users.describe(include='all')      # count, unique, top, freq, mean, .... (all columns)
users.occupation.describe()        # count, unique, top, freq

round(users.age.mean())

 ```

 ```
 c = chipo.groupby('item_name')
c = c.sum()
c = c.sort_values(['quantity'], ascending=False)
c.head(1)
 ```

 ```
# Change the 
iris.columns = iris.columns.str.upper()

# Lambda function on a column
dollarizer = lambda x: float(x[1:-1])
chipo.item_price = chipo.item_price.apply(dollarizer)
 ```

# Visualization

 * [https://github.com/m-mehdi/pandas_tutorials](https://github.com/m-mehdi/pandas_tutorials)

 ```
import pandas as pd

dataset_url = ('https://raw.githubusercontent.com/m-mehdi/pandas_tutorials/main/weekly_stocks.csv')
# Tell panda this is a Date, use as an index for resampling
df = pd.read_csv(dataset_url, parse_dates=['Date'], index_col='Date')

# Check index is date/timestamp
df.index

df.plot(y='MSFT', ax=figsize(9,6),color="#008800")

df.plot.line(y=['FB','AAPL','MSFT'], ax=figsize(10,6))

df.plot(y='FB', ax=figsize(10,6), title='Facebook stock', ylabel='USD')

#  last 3 records of the mean per month for the stocks
# <!> resample only on the index, not other columns
df_3Months = df.resample(rule='M').mean()[-3:]
print(df_3Months)

help(df.resample)

# Bar plot
# * vertical bars
# * horizontal bars
# * stacked bars (sum of values, each bar has 3 layers)
df_3Months.plot(kind='bar', ax=figsize(10,6), ylabel='Price', color=["red","green", "blue"])
df_3Months.plot(kind='barh', ax=figsize(9,6))
df_3Months.plot(kind='bar', stacked=True, ax=figsize(9,6))

# Histogram = distribution of data
df[['MSFT', 'FB']].plot(kind='hist', bins=25, ax=figsize(9,6))

# Box plot (to understand outliers)
# max
# 75 percentile
# median
# 25 percentile
# min
df.plot(kind='box', figsize=(9,6))
df.plot(kind='box', vert=False, figsize=(9,6))

# Area plot
df.plot(kind='area', figsize(9,6))

# Pie chart
# * Set name of wedgies
# * 1 big pie chart! 
# * many subplots (pie charts)
df_3Months.index=['March', 'April', 'May']
df_3Months.plot(kind='pie', y='AAPL', legend=False, autopct='%.f')
df_3Months.plot(kind='pie', legend=False, autopct='%.f', subplots=True, figsize=(14,8))

# Scatter plot = how points are distributed (find relationship between 2 vars = correlation)
df.plot(kind='scatter', x='MSFT', y='AAPL', figsize=(9,6), color='Green')
 ```

Reformat axis names
 ```
def formatxaxis(label):
    result=label.month_name() + str(month.year)
    return result

ax = df_3Months.plot(kind='bar', figsize=(10,6), ylabel='Price', color=["red","green", "blue"])
# Change above plot
ax.set_xticklabels(map(formatxaxis, df_3Months.index))
 ```

 Iris
 ```
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
import seaborn as sns

%matplotlib inline
sns.set()

# pip install seaborn - if you are  using personal laptop to run the notebooks 

iris = sns.load_dataset("iris")
iris.head()
iris.columns =['sepal_length','sepal_width','petal_length','petal_width']

iris.columns =['sepal_length','sepal_width','petal_length','petal_width','species']
iris['petal_length'].plot()
iris.plot()

# New dataset
tips = sns.load_dataset('tips')
tips.head()

# Cross Tabulation
day_size_table=pd.crosstab(tips["day"],tips["size"])    # Table with number of samples with a given tips["day"] and tips["size"]
day_size_table
day_size_table.plot.bar()

tips['tips_perc'] = tips['tip'] / (tips['total_bill'] - tips['tip'])
sns.barplot(x='day', y='tips_perc', data=tips, orient='v')
sns.barplot(x='day', y='tips_perc', hue='time', data=tips, orient='v')

# plot with confidence interval

tips['tips_perc'].plot.hist(bins=70)
sns.histplot(tips['tips_perc'], kde=True, bins=50, color="r")
sns.regplot(x='sepal_length', y='petal_length', data=iris)

 ```

# Lunch break

```


```

other - 
.astype('categorical') 

 * [https://stackoverflow.com/questions/55012142/pandas-difference-between-astypecategorical-and-pd-category](https://stackoverflow.com/questions/55012142/pandas-difference-between-astypecategorical-and-pd-category)

