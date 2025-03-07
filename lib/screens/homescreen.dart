import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter/material.dart';
import 'package:tinishop/res/appwidget/appgroupnavigator.dart';
import 'package:tinishop/res/appwidget/appproductcard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<BannerModel> listBanners = [
    BannerModel(imagePath: 'images/1.jpg', id: "1"),
    BannerModel(imagePath: 'images/4.jpg', id: "2"),
    BannerModel(imagePath: 'images/3.jpg', id: "3"),
    BannerModel(imagePath: 'images/2.jpg', id: "4"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.only(top: 10.0,),
        children: [
          BannerCarousel(
            banners: listBanners,
            activeColor: Theme.of(context).colorScheme.primary,
            animation: true,
            spaceBetween: 1.0,
            viewportFraction: 0.95,
            initialPage: 1,
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: AppGroupNavigator(
                    text1: 'Hot deals',
                    text2: 'View more',
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10.0, top: 10.0,),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      spacing: 10,
                      children: [
                        AppProductCard(
                          ratingStar: 4,
                          ratingVote: 47,
                          price: 100.00,
                          productname: 'Product 1',
                          productImage: 'images/33.jpg',
                        ),
                        AppProductCard(
                          ratingStar: 2,
                          ratingVote: 76,
                          price: 100.00,
                          productname: 'Product 1',
                          productImage: 'images/55.jpg',
                        ),
                        AppProductCard(
                          ratingStar: 5,
                          ratingVote: 10,
                          price: 100.00,
                          productname: 'Product 1',
                          productImage: 'images/11.jpg',
                        ),
                        AppProductCard(
                          ratingStar: 3,
                          ratingVote: 56,
                          price: 100.00,
                          productname: 'Product 1',
                          productImage: 'images/22.jpg',
                        ),
                        AppProductCard(
                          ratingStar: 3,
                          ratingVote: 10,
                          price: 100.00,
                          productname: 'Product 1',
                          productImage: 'images/44.jpg',
                        ),
                        AppProductCard(
                          ratingStar: 3,
                          ratingVote: 47,
                          price: 100.00,
                          productname: 'Product 1',
                          productImage: 'images/66.jpg',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Theme.of(context).colorScheme.surfaceContainerLow,
            thickness: 10.0,
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: AppGroupNavigator(
                    text1: 'Category',
                    text2: 'View more',
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10.0, top: 10.0,),  
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 8,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                    itemBuilder: (context, index){
                      return Container(
                        margin: EdgeInsets.all(5.0),
                        child: Column(
                          children: [
                            Container(
                              width: 50.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.surfaceContainerLow,
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                            ),
                            SizedBox(height: 5.0,),
                            Text('Category $index',),
                          ],
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ), 
          

          
          //Everything below was generated with AI and I havnet checked them yet!
          //This is just to preview my app remember to remove ASAP!
          
          Container(
            margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: AppGroupNavigator(
                    text1: 'New Arrivals',
                    text2: 'View more',
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10.0, top: 10.0,),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      spacing: 10,
                      children: [
                        AppProductCard(
                          ratingStar: 4,
                          ratingVote: 47,
                          price: 100.00,
                          productname: 'Product 1',
                          productImage: 'images/33.jpg',
                        ),
                        AppProductCard(
                          ratingStar: 2,
                          ratingVote: 76,
                          price: 100.00,
                          productname: 'Product 1',
                          productImage: 'images/55.jpg',
                        ),
                        AppProductCard(
                          ratingStar: 5,
                          ratingVote: 10,
                          price: 100.00,
                          productname: 'Product 1',
                          productImage: 'images/11.jpg',
                        ),
                        AppProductCard(
                          ratingStar: 3,
                          ratingVote: 56,
                          price: 100.00,
                          productname: 'Product 1',
                          productImage: 'images/22.jpg',
                        ),
                        AppProductCard(
                          ratingStar: 3,
                          ratingVote: 10,
                          price: 100.00,
                          productname: 'Product 1',
                          productImage: 'images/44.jpg',
                        ),
                        AppProductCard(
                          ratingStar: 3,
                          ratingVote: 47,
                          price: 100.00,
                          productname: 'Product 1',
                          productImage: 'images/66.jpg',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: AppGroupNavigator(
                    text1: 'Best Seller',
                    text2: 'View more',
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10.0, top: 10.0,),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      spacing: 10,
                      children: [
                        AppProductCard(
                          ratingStar: 4,
                          ratingVote: 47,
                          price: 100.00,
                          productname: 'Product 1',
                          productImage: 'images/33.jpg',
                        ),
                        AppProductCard(
                          ratingStar: 2,
                          ratingVote: 76,
                          price: 100.00,
                          productname: 'Product 1',
                          productImage: 'images/55.jpg',
                        ),
                        AppProductCard(
                          ratingStar: 5,
                          ratingVote: 10,
                          price: 100.00,
                          productname: 'Product 1',
                          productImage: 'images/11.jpg',
                        ),
                        AppProductCard(
                          ratingStar: 3,
                          ratingVote: 56,
                          price: 100.00,
                          productname: 'Product 1',
                          productImage: 'images/22.jpg',
                        ),
                        AppProductCard(
                          ratingStar: 3,
                          ratingVote: 10,
                          price: 100.00,
                          productname: 'Product 1',
                          productImage: 'images/44.jpg',
                        ),
                        AppProductCard(
                          ratingStar: 3,
                          ratingVote: 47,
                          price: 100.00,
                          productname: 'Product 1',
                          productImage: 'images/66.jpg',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}