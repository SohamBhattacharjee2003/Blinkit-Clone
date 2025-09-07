import 'package:flutter/material.dart';
import 'package:my_app/reposistory/screens/home/homescreen.dart';
import 'package:my_app/reposistory/screens/cart/cartscreen.dart';
import 'package:my_app/reposistory/screens/print/printscreen.dart';
import 'package:my_app/reposistory/screens/category/categoryscreen.dart';
import 'package:my_app/reposistory/widgets/uihelper.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIndex = 0;

  List<Widget> pages = [
    const HomeScreen(),
    const CartScreen(),
    CategoryScreen(),
    const PrintScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: pages),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: UiHelper.CustomImage(img: "home 1.png"),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: UiHelper.CustomImage(img: "shopping-bag 1.png"),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: UiHelper.CustomImage(img: "category 1.png"),
            label: "Category",
          ),
          BottomNavigationBarItem(
            icon: UiHelper.CustomImage(img: "printer 1.png"),
            label: "Print",
          ),
        ],
      ),
    );
  }
}
