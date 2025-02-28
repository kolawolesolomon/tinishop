import 'package:flutter/material.dart';
import 'package:tinishop/res/appstyles/appfont.dart';

class AppGroupNavigator extends StatelessWidget {
  final String? text1;
  final String? text2;
  const AppGroupNavigator(
    {
      super.key,
      required this.text1,
      required this.text2,
    }
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:[
        Text(
          text1!,
          style: MyFont.headlinetext1.copyWith(fontSize: 20.0),
        ),
        Row(
          children: [
            TextButton(
               onPressed: (){
                // do something
              },
              child: Row(
                
                children: [
                  Text(
                    text2!,
                    style: MyFont.headlinetext3.copyWith(fontSize: 16.0),
                  ),
                  SizedBox(width: 10.0,),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}