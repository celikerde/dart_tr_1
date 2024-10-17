void main() {
  final macOs = MacOS(2001);
  print(macOs.release);
  print(macOs.calculate());
  macOs.run();
  macOs.stop();

  String foo = "foo";
  String bar = "bar";

  print("First character of $foo is ${foo.firstChar}");
  print("First character of $bar is ${bar.firstChar}");
}

final class MacOS {
  final int release;
  const MacOS(this.release);
  int calculate() => _CalculateRelease(release).getReleaseTime;
}

final class Windows {
  final int release;
  const Windows(this.release);
  int calculate() => _CalculateRelease(release).getReleaseTime;
}

extension type const _CalculateRelease(int i) {
  int get getReleaseTime => 2024 - i;
}

extension on MacOS {
  void run() => print("${this.runtimeType} has been started!");
}

extension MacOsExtension on MacOS {
  void stop() => print("${this.runtimeType} has been stopped!");
}

extension on String {
  String get firstChar => this.split('').first;
}
