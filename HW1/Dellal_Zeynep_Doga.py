def foo(key, value):
    print("Key : " + key + "  value : " + value)


assocArr = {'color': 'purple',
            'number': 2,
            'city': 'ankara',
            'class': 'CS-315'}
print(assocArr)

colorInAssocArr = assocArr['color']
print("\nGetting the value of color: " + colorInAssocArr)

# Add a new element
assocArr['Language'] = 'python'
print(assocArr)

# Remove an existing element
assocArr.pop('class')


# Modify the value of an existing element
assocArr['number'] = '13'

# Search for the existence of a key
containsName = False
containsColor = False
if 'name' in assocArr.keys():
    containsName = True

if 'color' in assocArr.keys():
    containsColor = True

print("\nSearching if color key exists: " + str(containsColor))
print("Searching if name key exists: " + str(containsName))

# Search for the existence of a value
containsAnkara = False
containsIstanbul = False
if 'ankara' in assocArr.values():
    containsAnkara = True

if 'istanbul' in assocArr.values():
    containsIstanbul = True

print("\nSearching if ankara value exists: " + str(containsAnkara))
print("Searching if istanbul value exists: " + str(containsIstanbul) + "\n")

# call the function foo
for k in assocArr:
    foo(k, assocArr[k])
