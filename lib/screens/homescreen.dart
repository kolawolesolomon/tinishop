import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter/material.dart';
import 'package:tinishop/res/appwidget/appgroupnavigator.dart';

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
            // margin: EdgeInsets.only(right: 30.0,),
            spaceBetween: 1.0,
            viewportFraction: 0.95,
            initialPage: 1,
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
            // color: Theme.of(context).colorScheme.primaryContainer,
            color:Colors.white,
            // padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: AppGroupNavigator(text1: 'Hot deals',text2: 'View more',),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 200.0,
                        width: 150.0,
                        decoration: BoxDecoration(
                          
                          borderRadius: BorderRadius.circular(10.0),
                          color: Theme.of(context).colorScheme.primaryContainer,
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                    image: AssetImage('images/1.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),  
                            ),
                            Expanded(child: Text('Product name', style: TextStyle(fontSize: 16.0),)),
                            Text('Price', style: TextStyle(fontSize: 16.0),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          
          
          
          
          
          
          
          Container(
            height: 200.0,
            color: Theme.of(context).colorScheme.primaryContainer,
          ),
          
          
          
          
          
          
          
          
          
          Column(
            children: [
              AppGroupNavigator(text1: 'New arrivals',text2: 'View more',),
            ],
          ),
           Container(
            height: 200.0,
            color: Theme.of(context).colorScheme.primaryContainer,
          ),
          Column(
            children: [
              AppGroupNavigator(text1: 'New arrivals',text2: 'View more',),
            ],
          ),  
           Container(
            height: 200.0,
            color: Theme.of(context).colorScheme.primaryContainer,
          ),
          Column(
            children: [
              AppGroupNavigator(text1: 'New arrivals',text2: 'View more',),
            ],
          ),  
           Container(
            height: 200.0,
            color: Theme.of(context).colorScheme.primaryContainer,
          ),  
           Container(
            height: 200.0,
            color: Theme.of(context).colorScheme.primaryContainer,
          ),
          Column(
            children: [
              AppGroupNavigator(text1: 'New arrivals',text2: 'View more',),
            ],
          ),  
        ],
      ),
    );
  }
}