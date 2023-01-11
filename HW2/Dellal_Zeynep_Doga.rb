puts "--UNCONDITIONAL BREAK--";
i  = 1;
for i in 1..5 do
  puts i;
  i = i + 1;
  break;
end

puts "--UNCONDITIONAL CONTINUE--";
i  = 1;
for i in 1..5 do
  puts i;
  i = i + 1;
  next;
end

puts "--UNLABELED BREAK--";
i  = 1;
a = 1;
while i < 5 do
    if i == 4 then break end
    puts i;
    i = i+1;
  end

puts "--UNLABELED CONTINUE--";
i  = 0;
a = 0;
while i < 5 do
    i = i+1;
    if i == 3 then next end
    puts i;
  end