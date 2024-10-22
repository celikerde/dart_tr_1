void main() {
  final singleton = SingletonBasic.instance;
  print(singleton);
  SingletonBasic.run();
  singleton.nonStatic();
  print("------------");
  final singletonLazy = SingletonLazy.instance;
  print(singletonLazy);
  print("---------------");

  SingletonLazyInit.init();
  final singletonLazyInit = SingletonLazyInit.instance;
  print(singletonLazyInit);
  print("------------");
  final four1 = SingletonLast('Erdem');
  final four2 = SingletonLast("Celik");
  final singletonLast = SingletonLast.instance;
  print(singletonLast.data);
  print(four1.data);
  print(four2.data);
}

class SingletonBasic {
  SingletonBasic._();
  static final SingletonBasic _instance = SingletonBasic._();
  static SingletonBasic get instance => _instance;
  static void run() => print("Singleton is implemented.");
  void nonStatic() => print("Non static function has been called.");
}

class SingletonLazy {
  SingletonLazy._();
  static SingletonLazy? _instance;
  static SingletonLazy get instance {
    _instance ??= SingletonLazy._();
    return _instance!;
  }
}

class SingletonLazyInit {
  SingletonLazyInit._();
  static SingletonLazyInit? _instance;
  static SingletonLazyInit? get instance => _instance;
  static void init() {
    _instance ??= SingletonLazyInit._();
  }
}

class SingletonLast {
  SingletonLast._() {
    _data = null;
  }
  static final SingletonLast _instance = SingletonLast._();
  static SingletonLast get instance => _instance;
  String? _data;
  factory SingletonLast(String data) {
    _instance._data = data;
    return _instance;
  }
  String? get data => _data;
}
