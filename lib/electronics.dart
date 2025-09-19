import 'product.dart';

class ElectronicProduct extends Product {
  int warrantyMonths;

  ElectronicProduct(
    String productId,
    String productName,
    double price,
    this.warrantyMonths,
  ) : super(productId, productName, price);

  // Unique method
  void extendWarranty(int months) {
    if (months <= 0) {
      print('Invalid extension. Months must be positive.');
      return;
    }
    warrantyMonths += months;
    print(
      'Warranty extended by $months months. New warranty: $warrantyMonths months',
    );
  }

  // Override
  @override
  void showDetails() {
    super.showDetails();
    print('Warranty: $warrantyMonths months');
  }
}
