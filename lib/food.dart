import 'product.dart';

class FoodProduct extends Product {
  DateTime expiryDate;

  FoodProduct(
    String productId,
    String productName,
    double price,
    this.expiryDate,
  ) : super(productId, productName, price);

  // Unique method
  void checkExpiry() {
    final today = DateTime.now();
    if (today.isAfter(expiryDate)) {
      print('$productName has expired!');
    } else {
      print('$productName is still good until $expiryDate');
    }
  }

  // Override
  @override
  void showDetails() {
    super.showDetails();
    print('Expiry Date: $expiryDate');
  }
}
