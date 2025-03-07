import 'package:flutter/material.dart';
import 'package:flutter_faker_plus/flutter_faker_plus.dart';

class AppCategoryGrid extends StatelessWidget {
  const AppCategoryGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      // physics: NeverScrollableScrollPhysics(),
      itemCount: 14,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index){
        return Column(
          spacing: 5.0,
          children: [
            Container(
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(7.0),
              ),
            ),
            SizedBox(height: 5.0,),
            Text(
              EcommerceProduct.generate().category,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        );
      },
    );
  }
}