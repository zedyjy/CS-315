function foo(key, value)
    print("Key :", key, " value :" , value);
end

local assocArr = {["color"] = "purple",
                    ["number"]= 2,
                    ["city"]= "ankara",
                    ["class"]= "CS-315"};
                           
local colorInAssocArr = assocArr['color'];
print("\nGetting the value of color:" , colorInAssocArr);

--Add a new element
assocArr['Language'] = 'lua';

--Remove an existing element
assocArr["class"] = nil;

--Modify the value of an existing element
assocArr['number'] = '13';


local containsName = assocArr['name'] ~= nil;
local containsColor = assocArr['color'] ~= nil;

print("\nSearching if color key exists: ", containsColor);
print("Searching if name key exists: ", containsName);

local containsAnkara = false;
local containsIstanbul = false;
for k, v in pairs(assocArr) do
    if v == "ankara" then
        containsAnkara = true;
    end
    if v == "istanbul" then
        containsIstanbul = true;
    end
end

print("\nSearching if ankara value exists: ", containsAnkara);
print("Searching if istanbul value exists: ", containsIstanbul);

for k, v in pairs(assocArr) do
    foo(k,v);
end