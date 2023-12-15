total = 0
count = 0

with open('/home/admin/scores.txt', 'r') as file:
    for line in file:
        score = float(line.split()[1])
        total += score
        count += 1

result = total / count

with open('/home/admin/solution', 'w') as file:
    file.write(f"{result:.2f}")
