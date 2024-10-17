void main() {
  final context = BuildContext();
  final products = context.read<ProductViewModel>().products;
  print(products?[0].name);
}

class BuildContext {}

class Provider {
  static T of<T>(BuildContext context, {bool listen = true}) {
    return ProductViewModel() as T;
  }
}

extension _ProviderMixin on BuildContext {
  T watch<T>() => Provider.of<T>(this);
  T read<T>() => Provider.of<T>(
        this,
        listen: false,
      );
}

class ProductViewModel {
  List<Product>? _products;
  List<Product>? get products => _products;

  ProductViewModel() {
    setProducts();
  }

  void setProducts() {
    _products = [
      Product(name: 'Monster', price: 345345),
      Product(name: 'HAcer', price: 21131),
    ];
  }
}

class Product {
  final String? name;
  final double? price;
  const Product({
    this.name,
    this.price,
  });
}
