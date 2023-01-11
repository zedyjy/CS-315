def foo(key, value)
    print "Key :" , key , ", value : " , value , "\n";
 end

assocArr = {"color" => "purple", "number" => 2, "city" => "ankara", "class" => "CS-315"};

#Get the value for a given key
colorInAssocArr = assocArr["color"];
print("\nGetting the value of color: " + colorInAssocArr + "\n");

#Add a new element
assocArr["language"] = "ruby";

#Remove an existing element
assocArr.delete("class");

#Modify the value of an existing element
assocArr["number"] = 13;

#Search for the existence of a key
print "Searching if color key exists: " , assocArr.key?("color") , "\n";
print "Searching if name key exists: " , assocArr.key?("name"), "\n\n";

#Search for the existence of a value
print "Searching if ankara value exists: " , assocArr.has_value?("ankara"), "\n";
print "Searching if istanbul value exists: " , assocArr.has_value?("istanbul"), "\n\n";

#call the function foo
assocArr.each do |key,value|
    foo(key,value);
end
