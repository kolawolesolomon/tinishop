import 'package:flutter_faker_plus/flutter_faker_plus.dart';
class ProductModel{

  String? productId;
  String? productName;
  String? productDescription;
  double? productPrice;
  String? productCurrency;
  List<String>? productImages;
  String? productCategory;

  ProductModel(
    {
      this.productId  = "Product ID",
      this.productName = "Product Name",
      this.productDescription  = "Product Description",
      this.productPrice = 0.0,
      this.productCurrency = "USD",
      this.productImages,
      this.productCategory   = "Category"
   }
  );
}

List<ProductModel> products = [
  ProductModel(
    productId: "1",
    productName: EcommerceProduct.generate() .name,
    productDescription: "Product 1 Description",
    productPrice: EcommerceProduct.generate() .price,
    productCurrency: "USD",
    productImages: ["assets/images/product1.jpg"],
    productCategory:EcommerceProduct.generate() .category,
  ),
  ProductModel(
    productId: "2",
    productName:EcommerceProduct.generate() .name,
    productDescription: "Product 2 Description",
    productPrice: EcommerceProduct.generate() .price,
    productCurrency: "USD",
    productImages: ["assets/images/product2.jpg"],
    productCategory:EcommerceProduct.generate() .category,
  ),
  ProductModel(
    productId: '3',
    productName: EcommerceProduct.generate() .name,
    productDescription: "Product 3 Description",
    productPrice: EcommerceProduct.generate() .price,
    productCurrency: "USD",
    productImages: ["assets/images/product3.jpg"],
    productCategory:EcommerceProduct.generate() .category,
  ),
  ProductModel(
    productId: '4',
    productName: EcommerceProduct.generate() .name,
    productDescription: "Product 4 Description",
    productPrice: EcommerceProduct.generate() .price,
    productCurrency: "USD",
    productImages: ["assets/images/product4.jpg"],
    productCategory:EcommerceProduct.generate() .category,
  ),
  ProductModel(
    productId: '5',
    productName: EcommerceProduct.generate() .name,
    productDescription: "Product 5 Description",
    productPrice: EcommerceProduct.generate() .price,
    productCurrency: "USD",
    productImages: ["assets/images/product5.jpg"],
    productCategory:EcommerceProduct.generate() .category,
  ),
  ProductModel(
    productId:'6',
    productName: EcommerceProduct.generate() .name,
    productDescription: "Product 6 Description",
    productPrice: EcommerceProduct.generate() .price,
    productCurrency: "USD",
    productImages: ["assets/images/product6.jpg"],
    productCategory:EcommerceProduct.generate() .category,
  ),
  ProductModel(
    productId: '7',
    productName: EcommerceProduct.generate() .name,
    productDescription: "Product 7 Description",
    productPrice: EcommerceProduct.generate() .price,
    productCurrency: "USD",
    productImages: ["assets/images/product7.jpg"],
    productCategory:EcommerceProduct.generate() .category,
  ),
  ProductModel(
    productId: '8',
    productName: EcommerceProduct.generate() .name,
    productDescription: "Product 8 Description",
    productPrice: EcommerceProduct.generate() .price,
    productCurrency: "USD",
    productImages: ["assets/images/product8.jpg"],
    productCategory:EcommerceProduct.generate() .category,
  ),
  ProductModel(
    productId:'9',
    productName: EcommerceProduct.generate() .name,
    productDescription: "Product 8 Description",
    productPrice: EcommerceProduct.generate() .price,
    productCurrency: "USD",
    productImages: ["assets/images/product8.jpg"],
    productCategory:EcommerceProduct.generate() .category,
  )

];