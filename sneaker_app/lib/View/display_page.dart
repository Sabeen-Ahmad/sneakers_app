import 'package:flutter/material.dart';
import 'package:sneaker_app/components/bottom_nav_bar.dart';
import 'package:sneaker_app/View/shop_page.dart';
import 'package:sneaker_app/View/cart_page.dart';

class DisplayPage extends StatefulWidget {
  const DisplayPage({super.key});

  @override
  State<DisplayPage> createState() => _DisplayPageState();
}

class _DisplayPageState extends State<DisplayPage> {
  // This selected index is used to control bottom nav bar
  int selectedIndex = 0;

  // This method will update our selected index
  void navigateBottomBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  // Pages to display
  final List<Widget> pages = [
    const ShopPage(),
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Padding(
              padding: const EdgeInsets.only(left:12.0),
              child: const Icon(
                Icons.menu,
                color: Colors.black87,
              ),
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[800],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.grey[800], // Optional background color for DrawerHeader
                  ),
                  child: Image.network(
                    'images/logo.png',
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,  // Ensures the image covers the entire DrawerHeader
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2.0),
                  child: Divider(
                    color: Colors.grey[800],
                  ),
                ),
                // Other pages
                const Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Home',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: ListTile(
                    leading: Icon(
                      Icons.info,
                      color: Colors.white,
                    ),
                    title: Text(
                      'About',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
    ]),
                const Padding(
                  padding: EdgeInsets.only(left: 25,bottom: 25),
                  child: ListTile(
                    leading: Icon(
                      Icons.logout,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Logout',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],),
        ),


      bottomNavigationBar: BottomNavBar(onTabChange: (index) => navigateBottomBar(index)),
      body: pages[selectedIndex],
    );
  }
}
