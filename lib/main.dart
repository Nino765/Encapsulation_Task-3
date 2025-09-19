import 'product.dart';
import 'electronics.dart';

void main() {
  // Base class
  var prod = Product("P001", "Generic Item", 100);
  prod.showDetails();
  prod.applyDiscount(10);

  // Derived: ElectronicProduct
  var laptop = ElectronicProduct("E001", "Laptop", 50000, 24);
  laptop.showDetails();
  laptop.extendWarranty(6);
}
