#iterates through "CS315 HOMEWORK 2" sentence and breaks the in the first space

print("--UNCONDITIONAL CONTINUE--")
for i in range(1, 5):
    print(i)
    continue

print("--UNCONDITIONAL BREAK--")
for i in range(1, 5):
    print(i)
    break

print("--CONDITIONAL BREAK--")
word = "CS315 HW 2"
for letter in word:
    if letter == " ":
        break
    print(letter)

print("--CONDITIONAL CONTINUE--")
word = "CS315 HW 2"
for letter in word:
    if letter == " ":
        continue
    print(letter)


