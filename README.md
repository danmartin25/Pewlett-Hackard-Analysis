# Pewlett-Hackard-Analysis

## Overview
We work for the company Pewlett-Hackard (PH) and have been assigned to analyze some company data. PH has given us some raw data through csv files, and we used pgAdmin and PostgreSQL to complete our analysis. Specifically, we were given two assignments: determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program. Our manager is looking for data to prepare for the "silver tsunami" of potential retiring employees.

### Resources
pgAdmin 4.6.2, PostgreSQL 14.1

## Results
### Deliverable 1
For our first assignment, we created a "Retirement Titles" table for eployees born between 1952 and 1955. This age range is meant to give us an idea of how many employees are closer to retiring and what positions they hold in the company. Below is an image of the results yielded from the analysis:

![retiring_counts](https://user-images.githubusercontent.com/91795475/143729638-9a793b47-d954-4ffa-b8df-72051f492341.png)

### Deliverable 2
For our second assignment, we created a "Mentorship Eligibility" table to determine which current employees fit the criteria to be eligible for a mentorship program. Below is a snapshot of the csv file created with the list of eligible employees:

![mentorship_list](https://user-images.githubusercontent.com/91795475/143729869-05979b1b-7acd-4a5c-b31a-a6b5d5a935d0.png)

### Theories and Conclusions from Deliverables
The results from the deliverables gave us some insight about the company's impending "silver tsunami."

- Most of the relatively older employees hold senior positions in the company, specifically senior engineer or senior staff.
- Holding these experienced leadership positions means that these employees will be ideal candidates for the mentorship program.
- The mentorship eligibility list should be used to target employees who can become mentors and pass on their knowledge before retirement.
- On the brightside, PH will likely save some money in salaries when many of the senior level, experienced employees retire and are replaced with younger, less experienced employees.

## Summary
Deliverable 1's results showed us that 90,398 roles will need to be filled by the end of the "silver tsunami." Deliverable 2's results showed us that there are currently 1,549 qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees. This could become an issue. If the mentorship program is meant to be one mentor per mentee over the period of the silver tsunami, this is a major issue. PH would be 88,849 mentors short. If this is the case, I would recommend PH adjusting their program to allow for mentors to have multiple mentees. For every mentee to have a mentor, each mentor would need to take on at least 58 mentees. This could also be unreasonable, but we know the silver tsunami will happen over a few years so each mentor could take on 15 or so per year, which may be feasable. At this point, PH's best option would be to immediately start having mentors train as many mentees as possible and hope for the best, or ease the standards to be a mentor. Other options that would cost more money include offering incentives for employees to retire later, or hiring recent retirees from PH to mentor. It may also help to hire more managers who could in turn help inexperienced employees. Below we can see overall there are very few managers when compared to all of the other jobs, as seen in the table below.

![managers](https://user-images.githubusercontent.com/91795475/143730576-af102c61-663e-491c-800e-b3a43d78518b.png)

As for the incentives for employees to stay longer option, we would need to do another analysis to determine the value. While we already have a salaries table (below), we would likely want to do a join with some more employee information from other tables to get a better description of the employees' salaries.

![salaries](https://user-images.githubusercontent.com/91795475/143730980-9cea9480-dc11-468c-8233-899bfaaf8d4f.png)

