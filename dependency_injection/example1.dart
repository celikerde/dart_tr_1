class Car {
  final String model;
  const Car(this.model);
  void park() => print("$runtimeType $model is parking");
}

class Human {
  final String name;
  const Human(this.name);
  void walk() => print("$runtimeType $name is walking");
  void run() => print("$runtimeType $name is running");
}

class CarParking {
  final car = Car("Bugatti");
  final human = Human("Ahmet");
  void openingBarrier() => print("${human.name} with ${car.model} has came.");
}

void main() {
  final carParking = CarParking();
  carParking.openingBarrier();
  carParking.car.park();
  carParking.human.walk();
}
