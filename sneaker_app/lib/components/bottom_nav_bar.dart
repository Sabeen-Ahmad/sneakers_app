import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
class BottomNavBar extends StatefulWidget {
  void Function(int)? onTabChange;
    BottomNavBar({super.key,required this.onTabChange});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:
      Padding(
        padding:EdgeInsets.symmetric(vertical: 20),
        child: GNav(
        color: Colors.grey[400],
            activeColor: Colors.grey[700],
            tabActiveBorder: Border.all(color: Colors.white),
            tabBackgroundColor: Colors.grey.shade100,
            mainAxisAlignment: MainAxisAlignment.center,
            tabBorderRadius:16,
            gap: 8,
            onTabChange: (value)=>widget.onTabChange!(value),
            tabs:[
              GButton(
                icon: Icons.home,
              text: 'Shop',
            ),
        GButton(
          icon: Icons.shopping_bag_rounded,
          text: 'Cart',
        ),
            ],),
      ),
    );
  }
}
