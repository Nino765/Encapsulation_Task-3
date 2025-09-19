import 'product.dart';

void main() {
  // Base class
  var prod = Product("P001", "Generic Item", 100);
  prod.showDetails();
  prod.applyDiscount(10);
}
