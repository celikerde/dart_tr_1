void main() {
  final genericType = GenericType<int, List<int>>(0, [0]);
  genericType.checkType<int>();
  print(genericType.val);
  genericType.addElement(16);
  print(genericType.list);
  TestFunction<int, int, int> productFunction = (a, b) => a * b;
  print(productFunction(4, 5));
  TestFunction<String, String, String> toStringFunction =
      (a, b) => "1: $a, 2 : $b";
  print(toStringFunction('Erdem', 'Celik'));

  final tryTypes = TryTypes<String>();
  print(tryTypes.typeOfThis);
}

typedef TestFunction<R, K, V> = R Function(K a, V b);

class GenericType<T, S extends List<T>> {
  final T val;
  final S list;
  const GenericType(this.val, this.list);

  void addElement(T val) {
    list.add(val);
  }

  void checkType<C>() {
    assert(C == T);
    print(T);
    print(S);
  }
}

class TryTypes<T> {
  final Type _typeOfThis = TryTypes<T>;
  TryTypes() {
    print(_typeOfThis);
  }
  Type get typeOfThis => _typeOfThis;
}
