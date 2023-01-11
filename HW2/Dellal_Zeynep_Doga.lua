print("--UNCONDITIONAL CONTINUE--")
for i=1,5 do
  print(i)
  goto continuegoto
  ::continuegoto::
end
print("--UNCONDITIONAL BREAK--")
for i=1,5 do
  print(i)
  break
end

local i  = 1;
local a = 1;
print("--UNLABELED BREAK--")
while i < 5 do
    if(i == 4) then break end
    print( i )
    i = i+1
end

print("--GOTO CONTINUE--");
for i=1,5 do
  if i == 3 then goto continuegoto end
  print(i)
  ::continuegoto::
end

print("--GOTO BREAK--")
while a < 5 do
    while a > 0 do
        if(a == 4) then goto breakgoto end
        print( a )
        a = a+1
    end
end
::breakgoto::