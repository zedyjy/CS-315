void main() {
  print("--UNCONDITIONAL CONTINUE--");
  for (var i = 0; i < 5; i++) {
    print(i);
    continue;
  }

  print("--UNCONDITIONAL EXIT--");
  for (var i = 1; i < 5; i++) {
    print(i);
    break;
  }

  print("--UNLABELED CONTINUE--");
  for (var i = 0; i < 5; i++) {
    if (i == 3) {
      continue;
    }
    print(i);
  }

  print("--UNLABELED BREAK--");
  var i = 0;
  while (i < 5) {
    i++;
    print(i);
    if (i == 3) break;
  }

  print("--LABELED CONTINUE--");
  labelforcontinue:
  for (var i = 0; i <= 5; i++) {
    for (var j = 0; j < 3; j++) {
      if (i == j) {
        continue labelforcontinue;
      }
    }
    print(i);
  }

  print("--LABELED BREAK--");
  var a = 1;
  exitouterloop:
  while (a < 5) {
    while (a > 0) {
      print(a);
      if (a == 3) break exitouterloop;
      a++;
    }
  }
}
