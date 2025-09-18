import 'product.dart';

class ClothingProduct extends Product {
  String size;

  ClothingProduct(String productId, String productName, double price, this.size)
    : super(productId, productName, price);

  // Unique method
  void changeSize(String newSize) {
    if (newSize.isEmpty) {
      print('Invalid size.');
      return;
    }
    size = newSize;
    print('Size changed to $size');
  }

  // Override
  @override
  void showDetails() {
    super.showDetails();
    print('Size: $size');
  }
}
