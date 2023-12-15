import csv

result = ""

with open('/home/admin/table_tableau11.csv', 'r') as file:
    max_rejected_ballots = 0

    reader = csv.reader(file) 
    csv.next(reader)
    for row in reader:
        district_name, population, rejected_ballots = row[1], int(row[3]), int(row[8])
        if population >= 100000:
            continue
        if rejected_ballots > max_rejected_ballots:
            max_rejected_ballots = rejected_ballots
            result = district_name

with open('/home/admin/mysolution', 'w') as file:
    file.writelines(result)
