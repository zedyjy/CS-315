int func(int x) {
  int y = 15;
  int innerfunc() {
    x = x * y;
    return x;
  }

  return innerfunc();
}

void fun() {
  int xInFun = 5;
  print("Printing local variable in fun: $xInFun");
}

int x = 10;
void fun2() {
  print("Printing global variable x: $x");
}

void func2() {
  int y = 15;
  print("Printing local variable in outer function: $y");
  void innerfunc() {
    int a = 20;
    print("Printing local variable in inner function: $a");
    print("Printing local variable of outer function in inner function: $y");
    y = 3;
    print(
        "Printing local variable of outer function in inner function after changing: $y");
  }

  innerfunc();
  print(
      "Printing local variable of outer function in outer function after changing: $y");
  //print("Printing local variable in innerfunc from outer func: $a");
}

int func3(int x, [int y = 4]) {
  int a = 1;
  for (int i = 0; i < y; i++) {
    a = a * x;
  }
  return a;
}

int increment(int x) => ++x;

int apply(int x, Function f) {
  return f(x);
}

int power(int x, [int y = 4]) {
  int a = 1;
  for (int i = 0; i < y; i++) {
    a = a * x;
  }
  return a;
}

void sub(int x) {
  x--;
  print("Inside of function value is: $x");
}

Function makePow(int multiplyBy) {
  return (int changable) => multiplyBy * changable;
}

void main() {
  print("Showing nested functions:");
  print(func(2));

  print("\nShowing scope of local variables:");
  func(15);
  fun();
  fun2();
  func2();

  print("\nShowing parameter passing methods:");
  int x = 10;
  print(power(2, 5));
  print(apply(12, increment)); //pass function
  print("Outside of function before apply the x value is: $x");
  sub(x);
  print("Outside of function after apply the x value is: $x");

  print("\nKeyword and default parameters:");
  print(power(2));
  //print(power()); // does not work

  print("\nClosures:");
  var mul2 = makePow(2);
  var mul15 = makePow(15);
  int a = mul2(15);
  int b = mul15(15);
  print("15 multiplied by 2: $a");
  print("15 multiplied by 15: $b");
}
