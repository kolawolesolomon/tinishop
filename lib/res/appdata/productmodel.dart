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
    productName: "Product 1",
    productDescription: "Product 1 Description",
    productPrice: 100.0,
    productCurrency: "USD",
    productImages: ["assets/images/product1.jpg"],
    productCategory: "Category 1"
  ),
  ProductModel(
    productId: "2",
    productName: "Product 2",
    productDescription: "Product 2 Description",
    productPrice: 200.0,
    productCurrency: "USD",
    productImages: ["assets/images/product2.jpg"],
    productCategory: "Category 2"
  ),
  ProductModel(
    productId: "3",
    productName: "Product 3",
    productDescription: "Product 3 Description",
    productPrice: 300.0,
    productCurrency: "USD",
    productImages: ["assets/images/product3.jpg"],
    productCategory: "Category 3"
  ),
  ProductModel(
    productId: "4",
    productName: "Product 4",
    productDescription: "Product 4 Description",
    productPrice: 400.0,
    productCurrency: "USD",
    productImages: ["assets/images/product4.jpg"],
    productCategory: "Category 4"
  ),
  ProductModel(
    productId: "5",
    productName: "Product 5",
    productDescription: "Product 5 Description",
    productPrice: 500.0,
    productCurrency: "USD",
    productImages: ["assets/images/product5.jpg"],
    productCategory: "Category 5"
  ),
  ProductModel(
    productId: "6",
    productName: "Product 6",
    productDescription: "Product 6 Description",
    productPrice: 600.0,
    productCurrency: "USD",
    productImages: ["assets/images/product6.jpg"],
    productCategory: "Category 6"
  ),
  ProductModel(
    productId: "7",
    productName: "Product 7",
    productDescription: "Product 7 Description",
    productPrice: 700.0,
    productCurrency: "USD",
    productImages: ["assets/images/product7.jpg"],
    productCategory: "Category 7"
  ),
  ProductModel(
    productId: "8",
    productName: "Product 8",
    productDescription: "Product 8 Description",
    productPrice: 800.0,
    productCurrency: "USD",
    productImages: ["assets/images/product8.jpg"],
    productCategory: "Category 8"
  )
];