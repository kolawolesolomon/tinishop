import 'dart:math';

class Product {
  final String name;
  final double price;

  Product(this.name, this.price);

  @override
  String toString() => 'Product(name: $name, price: \$${price.toStringAsFixed(2)})';
}

class RandomProductGenerator {
  static final List<String> _productNames = [
    "UltraBoost Sneakers", "QuantumX Laptop", "AeroFlow Hair Dryer",
    "NovaGlow Smartwatch", "HyperCharge Power Bank", "EchoBass Wireless Speaker",
    "PureVision Smart TV", "TitanEdge Gaming Mouse", "NanoCore Fitness Tracker",
    "SolarFlare LED Lamp", "Zenith Noise Cancelling Headphones", "SwiftKey Mechanical Keyboard",
    "AquaShield Water Bottle", "Vortex VR Headset", "FusionX Portable Blender",
    "Skyline Drone Pro", "ThermoPro Smart Mug", "LumeBright Desk Lamp",
    "SonicWave Earbuds", "GlideX Electric Scooter"
  ];

  static final Random _random = Random();

  static Product generateRandomProduct() {
    String name = _productNames[_random.nextInt(_productNames.length)];
    double price = (_random.nextDouble() * (1000 - 10)) + 10; // Price between 10 and 1000
    return Product(name, price);
  }

  static List<Product> generateProductList(int count) {
    return List.generate(count, (_) => generateRandomProduct());
  }
}

void main() {
  // List<Product> products = RandomProductGenerator.generateProductList(5);
  // for (var product in products) {
  //   print(product);
  // }
}
