class Product {
  final String _productId; // private and final
  String _productName;
  double _price;

  // Constructor
  Product(this._productId, String productName, double price)
    : _productName = productName,
      _price = price {
    // Use setter for validation
    this.productName = productName;
    this.price = price;
  }

  // Getter
  String get productId => _productId;

  // Getter + Setter with validation
  String get productName => _productName;
  set productName(String value) {
    if (value.isEmpty) {
      throw ArgumentError('Product name cannot be empty.');
    }
    _productName = value;
  }

  double get price => _price;
  set price(double value) {
    if (value < 0) {
      throw ArgumentError('Price cannot be negative.');
    }
    _price = value;
  }

  // Methods
  void applyDiscount(double percent) {
    if (percent <= 0 || percent > 100) {
      print('Invalid discount: must be between 0 and 100');
      return;
    }
    _price -= _price * (percent / 100);
    print('Discount applied: $percent% -> New price: $_price');
  }

  void showDetails() {
    print('Product ID: $_productId | Name: $_productName | Price: ₱$_price');
  }
}
