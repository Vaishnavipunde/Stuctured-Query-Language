# -*- coding: utf-8 -*-
"""
Created on Fri Sep  8 08:30:59 2023

@author: sai
"""
#importing psycopg2
import psycopg2 as pg2

#connect database
conn=pg2.connect(database='dvdrental',user='postgres',password='root')

#establish connection and start curser to be ready query
cur=conn.cursor()

#pass in a postgresql query as a string
cur.execute('select * from payment')

#return one row
cur.fetchone()

#return no. of rows
cur.fetchmany(10)

#return all rows
cur.fetchall()



#create course table
cur.execute(""" create table courses
   (course_id serial primary key,
   course_name varchar(300) unique not null,
   course_instruction varchar(100) not null,
   topic varchar(300) not null)""")

# to make database persistant
conn.commit()


#close the connection
cur.close()















