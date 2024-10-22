void main() {
  final popUpManager = PopupManager();
  popUpManager.open("Andrroid");
}

class Person {
  final String name;
  const Person(this.name);
}

class Service {
  String url = 'oifdcjsef';
  void fetch() => print("Something");
}

abstract class Vehicle {
  String? model;
  void start();
  void stop();
}

class Car extends Vehicle {
  @override
  // TODO: implement model
  String? get model => super.model;

  @override
  void start() => print("Started");
  @override
  void stop() => "Stopped";
}

class PopupManager {
  String? _popUpModel;
  void open(String platform) {
    _setTitle(platform);
    print(_popUpModel);
  }

  void _setTitle(String platform) {
    if (platform == 'Android') {
      _popUpModel = 'Material';
    } else {
      _popUpModel = 'Cupertino';
    }
  }
}
