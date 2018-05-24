import sqlite3
import pandas as pd
from matplotlib import pyplot as plt

con = sqlite3.connect('atus.sqlite')
with open('q4.sql') as f:
    sql = f.read()

df = pd.read_sql(sql , con)
df['sex'] = df['sex'].map({1:'Male', 2:'Female'})
df = df.set_index(['sex', 'decade'])['gaming_hours']\
       .unstack('sex')
ax = df.plot()
ax.set_ylabel('Average Time Gaming (Hours)')
plt.savefig('gaming.png')
