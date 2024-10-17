void main() {
  final anyClass = AnyClass();
  anyClass.call();

  final mixin2 = Mixin2();
  mixin2.call2();
}

class AnyClass extends AbstractClass with Mixin1, Mixin2 {}

class SomeClass extends AbstractClass with Mixin1, Mixin2 {}

abstract class AbstractClass {}

mixin Mixin1 on AbstractClass {
  void call() => print("Mixin1 is called");
}

mixin class Mixin2 {
  void call2() => print('Mixin2 is called');
}
