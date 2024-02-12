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


#############################################
import psycopg2 as pg2

conn=pg2.connect(database='testme',user='postgres',password='root')

cur=conn.cursor()

#create course table
cur.execute(""" create table courses1
   (course_id serial primary key,
   course_name varchar(300) unique not null,
   course_instruction varchar(100) not null,
   topic varchar(300) not null)""")
cur.execute("insert into courses1(course_name,course_instruction,topic)values('IOT','ram','juliate')")


cur.execute("insert into courses1(course_name,course_instruction,topic)values('sql','sham','juli')")


cur.execute("insert into courses1(course_name,course_instruction,topic)values('python','aa','jayesh')")


cur.execute("insert into courses1(course_name,course_instruction,topic)values('power','ramesh','liate')")


cur.execute("insert into courses1(course_name,course_instruction,topic)values('math','ganesh','theory')")

conn.commit()

cur.close()
conn.close()

########################################

cur.execute('select * from courses1')

rows=cur.fetchall()

conn.commit()
conn.close()


for row in rows:
    print(row)
    
###############################################3   
conn.commit()
cur=conn.cursor()
cur.execute('select course_instruction,count(*)from courses1 group by course_instruction')
    
########################################
cur.execute('select * from courses1 order by course_instruction')
    
rows=cur.fetchall()

conn.commit()
conn.close()

for row in rows:
    print(row)
    
###############################################    
    


#create course table
cur.execute(""" create table languages
   (  language_id serial primary key,
  language_name varchar(300) unique not null,
   language_topic varchar(300) not null)""")    


cur.execute("insert into languages(language_id,language_name,language_topic)values(1,'aa','jayesh')")


cur.execute("insert into languages(language_id,language_name,language_topic)values(2,'ramesh','liate')")

    
    
    
    
    
    
    
    
    
    
    
    