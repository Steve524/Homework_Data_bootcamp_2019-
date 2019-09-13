import os 
import csv
#import numpy

budgetData_csv = os.path.join("Resources", "budget_data.csv")
gtfo = os.path.join("Resources", "budget_analysis.txt")  #makes a file with the data

month = 0
total = 0
average_change = []
idk = 0
change_list = []
month_change = []
greatest_increase = ["", 0]
greatest_decrease = ["", 9999999999999]
#reading the csv
with open(budgetData_csv, newline="") as csvfile:
    csvreader = csv.reader(csvfile, delimiter=",")

    header = next(csvfile)

    print(f"Header: {header}")
    
#Months 
    for rows in csvreader:

        month = month + 1 

#Total
        total = total + int(rows[1])

        average_change = int(rows[1]) - idk

        idk = int(rows[1])

        change_list.append(average_change)
        month_change = month_change + [rows[0]]


        yomp = sum(change_list) / len(change_list)

        #profits in/de and dates 
        if (average_change > greatest_increase[1]):
            greatest_increase[0] = rows[0]
            greatest_increase[1] = average_change

        if (average_change < greatest_decrease[1]):
            greatest_decrease[0] = rows[0]
            greatest_decrease[1] = average_change

        # average_change = int(rows[1]) - idk
        # idk = int(rows[1]) 


       # if x in rows 

#beyond csv 
print(f"Financial Analysis")
print(f"----------------------------")
print(f"Total Months: {month} ")
print(f"Total: ${total} ")
print(f"Average Change: ${yomp} ") # This is giving the wrong number 
print(f"Greatest Increase In Profits: {greatest_increase[0]} (${greatest_increase[1]})")
print(f"Greatest Decrease In Profits: {greatest_decrease[0]} (${greatest_decrease[1]})")

output = (
    f"Financial Analysis",
    f"----------------------------",

    f"Total Months: {month} ",
    f"Total: ${total} ",
    f"Average Change: ${yomp} ", # This is giving the wrong number 
    f"Greatest Increase In Profits: {greatest_increase[0]} (${greatest_increase[1]})",
    f"Greatest Decrease In Profits: {greatest_decrease[0]} (${greatest_decrease[1]})" 
)
print(output)
##Writing it onto another txt
with open(gtfo, "w") as txt_file:
    txt_file.write(str(output))   # This prints it out weirdly 