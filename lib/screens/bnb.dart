import 'package:flutter/material.dart';
import 'package:tinishop/res/appstyles/appfont.dart';
import 'package:tinishop/screens/accountscreen.dart';
import 'package:tinishop/screens/categoriesscreen.dart';
import 'package:tinishop/screens/homescreen.dart';
import 'package:tinishop/screens/searchscreen.dart';

class BnbWidget extends StatefulWidget {


  const BnbWidget({super.key});

  @override
  State<BnbWidget> createState() => _BnbWidgetState();
}

class _BnbWidgetState extends State<BnbWidget> {
  int selectedIndex = 0;
  static const List<Widget> availableScreens = [
    HomeScreen(),
    CategoriesScreen(),
    SearchScreen(),
    MyAccountScreen(),
  ];
  changePageOnTap(index){
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        // automaticallyImplyLeading: true,
        title: Text(
          'TiniShop',
          style: MyFont.headlinetext1.copyWith(fontSize: 24.0),
        ),
        actionsPadding: EdgeInsets.all(7),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              // do something
            },
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 221, 217, 217),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.more_horiz,
                  // color: Theme.of(context).colorScheme.primary,
                  ),
                  onPressed: () {
                    // do something
                  },
                ),
                VerticalDivider(
                  indent: 7.0,
                  endIndent: 7.0,
                  color: const Color.fromARGB(255, 49, 48, 48),
                  thickness: 1,
                ),
                IconButton(
                  icon: const Icon(Icons.cancel),
                  onPressed: () {
                    // do something
                  },
                )
              ],
            ),
          ),
        ],
      ),
      body: availableScreens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Theme.of(context).primaryColor,
        currentIndex: selectedIndex,
        onTap: changePageOnTap,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor:
            Theme.of(context).colorScheme.onSecondaryContainer,
        selectedLabelStyle: MyFont.headlinetext3.copyWith(fontSize: 12.0),
        unselectedLabelStyle: MyFont.headlinetext3.copyWith(fontSize: 12.0),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_pin),
            label: 'My Account',
          ),
        ],
      ),
    );
  }
}