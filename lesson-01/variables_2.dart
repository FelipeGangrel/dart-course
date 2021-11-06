// lop level variable
int t = 5;

// We need to assign a value to the variable before accessing it
int? nullableTopLevel;
// We can assign a value to the variable after it is declared
late int nonNullableTopLevel;

class A {
  // static variable
  static int s = 12;
  // instance variable (field/property)
  double i = 25;
}

class B {
  int i;
  int? nullable;
  B({required this.i});
}

class C {
  int a;
  // must be initialized before reaching the constructor body
  int b;
  // can be initialized in the constructor body or even later
  late int c;
  C({required this.a}) : b = 10 {
    c = 20;
  }
}

void randomFunction() {
  // local variable
  var l = 4;

  int? nullableLocal;

  // local variables can be initialized after declaration
  // without using the late keyword
  int nonNullableLocal;
  nonNullableLocal = 5;

  print(nonNullableLocal.isEven);
}

void main(List<String> args) {
  // reassigning the value of a top level variable
  t = 8;

  // assigning a value to a nullable variable before accessing it
  nullableTopLevel = 5;
  print(nullableTopLevel!.isEven);

  // assigning a value to a non-nullable variable
  nonNullableTopLevel = 10;
  print(nonNullableTopLevel.isEven);

  // accessing a static variable
  print(A.s.isEven);

  // accessing an instance variable
  print(A().i.floor().isEven);

  // accessing a instance variable in a constructor
  print(B(i: 5).i.isEven);

  var bInstance = B(i: 5)..nullable = 6;
  print(bInstance.nullable!.isEven);
}
