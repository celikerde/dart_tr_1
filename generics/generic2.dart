void main() {
  final car = Car();
  car.horsePower = 115;
  car.start(car);
  car.run(car);
  final bus = Bus();
  bus.horsePower = 205;
  bus.start(bus);
  bus.run(bus);
}

abstract class Vehicle {
  int horsePower = 0;
}

mixin class Run<T extends Vehicle> {
  void run(T vehicle) {
    print("$T is running with ${vehicle.horsePower}");
  }
}

mixin class Start<T extends Vehicle> {
  void start(T vehicle) {
    print("$T is starting with ${vehicle.horsePower}");
  }
}

class Car extends Vehicle with Run<Car>, Start<Car> {
  @override
  int get horsePower => super.horsePower;
  @override
  set horsePower(int horsePower) => super.horsePower = horsePower;
}

class Bus extends Vehicle with Run<Bus>, Start<Bus> {
  @override
  int get horsePower => super.horsePower;
  @override
  set horsePower(int horsePower) => super.horsePower = horsePower;
}
