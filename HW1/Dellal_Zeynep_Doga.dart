//Loop through an associative array, apply a function, called foo, which simply prints the key-value pair
void foo(key, value) {
  print("Key : $key, value : $value");
}
void main() {
  //Initialize
  var assocArr = {
    'color': 'purple',
    'number': 2,
    'city': 'ankara',
    'class': 'CS-315'
  };

  //Get the value for a given key
  var colorInAssocArr = assocArr['color'];
  print("\nGetting the value of color: $colorInAssocArr");

  //Add a new element
  assocArr['Language'] = 'dart';

  //Remove an existing element
  assocArr.remove('class');

  //Modify the value of an existing element
  assocArr['number'] = '13';
  print(assocArr);

  //Search for the existence of a key
  bool containsName = assocArr.containsKey('name');
  bool containsColor = assocArr.containsKey('color');
  print("\nSearching if color key exists: $containsColor");
  print("Searching if name key exists: $containsName");

  //Search for the existence of a value
  bool containsAnkara = assocArr.containsValue('ankara');
  bool containsIstanbul = assocArr.containsValue('istanbul');
  print("\nSearching if ankara value exists: $containsAnkara");
  print("Searching if istanbul value exists: $containsIstanbul");

  //call the function foo
  for (var k in assocArr.keys) {
    foo(k, assocArr[k]);
  }
}
