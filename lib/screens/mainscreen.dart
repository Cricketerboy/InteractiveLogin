import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:demo/utils/bigscreen.dart';
import 'package:demo/utils/catalogscreen.dart';
import 'package:demo/utils/categories.dart';
import 'package:demo/utils/sale_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<IconData> iconList = [
    //list of icons that required by animated navigation bar.
    Icons.home,
    Icons.favorite_border,
    Icons.book_online_sharp,
    Icons.person,
  ];
  int _bottomNavIndex = 1;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.white,
    ));
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color.fromARGB(255, 255, 254, 254),
          elevation: 1.0,
          title: Text('Purva', style: TextStyle(color: Colors.red)),
          centerTitle: true,
          actions: [
            customIcon(Icons.search, Colors.red),
            SizedBox(width: 0),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            shape: StadiumBorder(),
            backgroundColor: Colors.white,
            child: Icon(Icons.shopping_cart_rounded, color: Colors.red),
            onPressed: () {}),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar(
          //navigation bar
          icons: iconList,
          activeIndex: _bottomNavIndex,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.verySmoothEdge,
          onTap: (index) => setState(() => _bottomNavIndex = index),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10.0),
              BigScreen(),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Categories',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15)),
                ),
              ),
              SizedBox(height: 8),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 77,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: ((context, index) => CatalogScreen()),
                  ),
                ),
              ),
              SizedBox(height: 12),
              Divider(
                color: Colors.black12,
                thickness: 0.5,
              ),
              SizedBox(height: 6),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Top Picks',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 19)),
                ),
              ),
              const Padding(
                padding: const EdgeInsets.fromLTRB(24, 18, 24, 24),
                child: Category(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget customIcon(IconData icon, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: IconButton(
        onPressed: () {},
        icon: Icon(
          icon,
          color: color,
        ),
      ),
    );
  }
}
