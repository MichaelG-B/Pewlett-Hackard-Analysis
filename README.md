# Pewlett-Hackard-Analysis

## Overview of Project

- Link to project file
- https://github.com/MichaelG-B/Pewlett-Hackard-Analysis/blob/e3a5ec8ea4742ed0c416e6c3fb7f7c411131544e/Queries/Employee_Database_challenge.sql

### Purpose

- The purpose of this analysis was to determine the number of retiring employees per title, and to Identify employees who are eligible to participate in a mentorship program for the new hires.

## Results

### 4 Major Points from Analysis
#### Some of the major points of our analysis include:

- The number of retiring employees who were born between 1952 and 1955, who have not already left the company equals 72,458 individuals. 
- Of these 72,458 retirees:
  - 25916 were Senior Engineers
  - 24926 were Senior Staff
  - 9285 were Engineers
  - 7636 were Staff
  - 3603 were Technique Leaders
  - 1090 were Assistant Engineers
  - 2 were Managers

![1st retiree](https://github.com/MichaelG-B/Pewlett-Hackard-Analysis/blob/57923b1c95b530817494514c30dab9cec196eda9/Pewlett-Hackard%20Challenge%20png's/1st%20retiree.png)

- The number of mentorship eligible employees who were born in 1965, who have not already left the company equals 1,549 individuals
- Of these 1,549 individuals:
  - 529 were Senior Engineers
  - 569 were Senior Staff
  - 190 were Engineers
  - 155 were Staff
  - 77 were Technique Leaders
  - 29 were Assistant Engineers
  - 0 were Managers

![1st mentorship](https://github.com/MichaelG-B/Pewlett-Hackard-Analysis/blob/57923b1c95b530817494514c30dab9cec196eda9/Pewlett-Hackard%20Challenge%20png's/1st%20mentorship.png)

## Summary

### Questions and 2 Queries

- How many roles will need to be filled as the "silver tsunami" begins to make an impact?
  - As the number of individuals born between 1952 and 1955 begin to retire, 72,458 roles will need to be filled by the outgoing "silver       tsunami"
- Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
  - No there are not enough retirement-ready employees across the different departments to mentor the next generation of Pewlett Hackard       employees; as there are only 1,549 individuals in this category.
 
- QUERY 1 : The number of retiring employees who were born in 1952, who have not already left the company and were hired between 1985 and 1988 equals 7,753 individuals.
- Of these 7,753 individuals:
  - 3190 were Senior Engineers
  - 3007 were Senior Staff
  - 651 were Engineers
  - 475 were Staff
  - 364 were Technique Leaders
  - 65 were Assistant Engineers
  - 1 were Managers

![2nd retiree](https://github.com/MichaelG-B/Pewlett-Hackard-Analysis/blob/57923b1c95b530817494514c30dab9cec196eda9/Pewlett-Hackard%20Challenge%20png's/2nd%20retiree.png)

- QUERY 2 : The number of mentorship eligible employees who were born either in or after 1965, who have not already left the company and were hired between 1985 and 1988 equals 691 individuals
- Of these 691 individuals:
  - 279 were Senior Engineers
  - 283 were Senior Staff
  - 52 were Engineers
  - 40 were Staff
  - 31 were Technique Leaders
  - 6 were Assistant Engineers
  - 0 were Managers

![2nd mentorship](https://github.com/MichaelG-B/Pewlett-Hackard-Analysis/blob/57923b1c95b530817494514c30dab9cec196eda9/Pewlett-Hackard%20Challenge%20png's/2nd%20mentorship.png)

- These two queries provides us with a more focused version of our previous tables. I decided to limit the date hired years for each of the tables to between 1985 and 1988, which are the oldest employees that have been with the company. For the retiree table I additionally limited the retiree birth year to 1952, in order to show the minimun retirees possible. For the mentorship table I kept the original birth date to 1965 however I expanded that to all years possible thereby providing all possible mentors no matter their age, as long as there were among the oldest employees (1985-1988).
- For the retiree table we learned that if necessary we could limit the retiring employees to one year at a time beginning with 1952, which would reduce the number from 72,458 retirees to 7,753 retirees.
- For the mentorship table disappointingly even with our expanded birth date we were still unable to get a substanital number of mentors to cover the number of retiring employee's even if that was narrowed to just 1952; we would have 691 mentors between the years 1985 and 1988, which is lower than all the possible mentors regardless of their hire date.
