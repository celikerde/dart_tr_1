void main() {
  print(PageStatus.values);
  print(PageStatus.success);
  print(PageStatus.success.index);
  print(PageStatus.success.name);
  print("--------");
  print(Currency.tl.name);
  print(Currency.tl.symbol);
  print(Currency.currencyList);
}

enum PageStatus {
  loading,
  success,
  failed,
}

enum Currency {
  usd(symbol: '\$', name: 'Dollar'),
  euro(symbol: 'E', name: 'Euro'),
  tl(symbol: 't', name: 'Lira');

  final String symbol;
  final String name;
  const Currency({
    required this.symbol,
    required this.name,
  });

  static final currencyList = Currency.values.map((element) => element.name);
}
