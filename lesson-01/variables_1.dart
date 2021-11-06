void main(List<String> args) {
  var a = 5;
  // The following variable is dynamic
  dynamic b = 5; // I'm int
  b = 'some text'; // Now I'm String

  // Nullable variable
  int? c = null;
  print(a.runtimeType);
  print(b.runtimeType);
  print(c.runtimeType);

  String? nullableString;
  String nonNullableString;

  // Wrong
  // nonNullableString = nullableString;

  // Correct
  nonNullableString = nullableString!;
  // but will throw an error if nullableString is null
  print(nonNullableString.runtimeType);
}
