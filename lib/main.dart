import 'product.dart';
import 'electronics.dart';
import 'clothing.dart';

void main() {
  // Base class
  var prod = Product("P001", "Generic Item", 100);
  prod.showDetails();
  prod.applyDiscount(10);

  // Derived: ElectronicProduct
  var laptop = ElectronicProduct("E001", "Laptop", 50000, 24);
  laptop.showDetails();
  laptop.extendWarranty(6);

  // Derived: ClothingProduct
  var shirt = ClothingProduct("C001", "T-Shirt", 500, "M");
  shirt.showDetails();
  shirt.changeSize("L");
}
