/**
 * Var vs Dynamic
 */

void main(List<String> args) {
  // the following variables will receive it`s types at compile time
  // you can even check it`s types hovering over the variable name

  var vi = 5; // same as int vi = 5;
  var vs = 'text'; // same as String vs = 'text';
  var vl = [1, 2, 3]; // same as List<int> vl = [1, 2, 3];

  // you can also access mothods from it`s parent classes
  vl.forEach((element) {
    print(element);
  });

  // but you cannot reassign a value of a different type
  // vi = 15; // ok
  // vi = 'text'; // error

  print('var runtime types:\n');
  print('vi runtime type: ${vi.runtimeType}');
  print('vs runtime type: ${vs.runtimeType}');
  print('vl runtime type: ${vl.runtimeType}');

  // the following variables will receive it`s types at runtime
  // if you hover over the variable name you will see the type as dynamic

  dynamic di = 5;
  dynamic ds = 'text';
  dynamic dl = [1, 2, 3];

  // you cannot access mothods from it`s parent classes
  // print(di.isEven()); // error

  // but you can reassign a value of a different type
  di = 15; // ok
  di = 'text'; // ok

  print('\ndynamic runtime types:\n');
  print('di runtime type: ${di.runtimeType}');
  print('ds runtime type: ${ds.runtimeType}');
  print('dl runtime type: ${dl.runtimeType}');

  // if you use the var keyword and don`t assign a value
  // then the type will be dynamic
  var x; // same as dynamic x;
  var y; // if never assigned a value, it will equals to null

  x = 5; // ok
  x = 'text'; // ok
  x = [1, 2, 3]; // ok

  print('\nx runtime type: ${x.runtimeType}');
  print('y runtime type: ${y.runtimeType}');
}
