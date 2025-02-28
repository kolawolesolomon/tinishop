import 'package:flutter/material.dart';
import 'package:tinishop/res/appstyles/appfont.dart';
import 'package:tinishop/res/appwidget/appproductcardstargen.dart';

class AppProductCard extends StatelessWidget {

  final String? productImage;
  final String? productname;
  final int? ratingStar;
  final int? ratingVote;
  final double? price;
  final double? discount;

  const AppProductCard(
    {
      super.key,
      this.productImage = 'images/1.jpg',
      this.productname = 'Product Name',
      this.ratingStar = 1,
      this.ratingVote = 0,
      this.price = 0.00,
      this.discount = 0,

    }
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: 120.0,
      decoration: BoxDecoration(
        
        // borderRadius: BorderRadius.circular(10.0),
        // color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: Column(
        spacing: 10.0,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Expanded for ProductImage
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.grey,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(productImage!, fit: BoxFit.cover,)
              ),
            ),  
          ),
          //Expanded for other details (name, star and price)
          Expanded(
            // flex: 1,
            child: Row(
              children: [
                //Expanded for product details
                Column(
                  spacing: 5.0,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      productname!,
                      style: MyFont.headlinetext3
                    ),
                    Row(
                      spacing: 5.0,
                      children: [
                        AppProductCardStarGen(starNumber: ratingStar,),
                        
                        Text('($ratingVote)'),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          price.toString(),
                          style: MyFont.headlinetext3,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5.0),
                          padding: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: const Color.fromARGB(255, 246, 94, 94),
                          ),
                          child: Text(
                            '$discount ' '%',
                            style: MyFont.headlinetext3.copyWith(fontSize: 10.0),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),    
          ),
        ],
      ),
    );
  }
}