import os 
import csv


electionData_csv = os.path.join("Resources", "election_data.csv")

total_votes = 0
Candidate_choice = []
votes = []

#reading the csv
with open(electionData_csv, newline="") as csvfile:
    csvreader = csv.reader(csvfile, delimiter=",")

    header = next(csvfile)

    print(f"Header: {header}")


    for rows in csvreader:

        #Total votes

        total_votes = total_votes + 1 

        #
        Candidates = row[2]

        if Candidates in Candidate_choice:
            Candidate_choice.appened(Candidates)
            votes[Candidates] = 0 
            votes[Candidates] = votes[Candidates] + 1







#print 
print("Election Results")
print("-------------------------")
print(f"Total Votes: {total_votes}")
print("-------------------------")
print(f"Khan: ")