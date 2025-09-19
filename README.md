# oopt3

A new Flutter project.

# Product Inheritance

This is a simple Dart project that demonstrates encapsulation and inheritance using a Product base class.
Derived products (ElectronicProduct, ClothingProduct, FoodProduct) add their own unique attributes and methods.

# Features
Base class Product with:

Private fields (_productId, _productName, _price)

Getters/setters with validation (e.g., no negative price, no empty name)

Methods:

applyDiscount() – apply a percentage discount

showDetails() – display product information

Derived products with unique methods:

ElectronicProduct → extendWarranty(), overrides showDetails()

ClothingProduct → changeSize(), overrides showDetails()

FoodProduct → checkExpiry(), overrides showDetails()

# How to Run

Make sure you have Dart installed.

Clone or download this project.

In terminal, run:

dart run lib/main.dart

# sample output

--- Base Product ---
Product ID: P001 | Name: Generic Item | Price: ₱100.0
Discount applied: 10% -> New price: 90.0

--- ElectronicProduct ---
Product ID: E001 | Name: Laptop | Price: ₱50000.0
Warranty: 24 months
Warranty extended by 6 months. New warranty: 30 months

--- ClothingProduct ---
Product ID: C001 | Name: T-Shirt | Price: ₱500.0
Size: M
Size changed to L

--- FoodProduct ---
Product ID: F001 | Name: Bread | Price: ₱50.0
Expiry Date: 2025-12-31 00:00:00.000
Bread is still good until 2025-12-31 00:00:00.000
