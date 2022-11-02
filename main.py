import csv


USERNAME_TEMP = "user"

students: dict[str, dict[str, str]] = dict()

with open("students.csv", "r") as file:
    reader = csv.reader(file)
    data = list(reader)

for student in data:
    if student[0].isdigit():
        fio = student[1:]

        if len(fio) < 3:
            fio.append(None)
        elif len(fio) < 2:
            fio.extend([None, None])

        students[f"{USERNAME_TEMP}{student[0]}"] = dict(
            lastname=fio[0],
            firstname=fio[1],
            secondname=fio[2],
        )

print(students)