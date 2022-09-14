import 'package:flutter/material.dart';
import 'package:uifirst/screens/cart_page.dart';
import 'package:uifirst/screens/homepage.dart';
import 'package:uifirst/screens/user_page.dart';
import 'package:uifirst/screens/wallet_page.dart';

class Button extends StatefulWidget {
  const Button({Key? key}) : super(key: key);

  @override
  State<Button> createState() => _NavigationState();
}

class _NavigationState extends State<Button> {
  int currentPage = 0;
  late List pages;

  @override
  void initState() {
    super.initState();
    pages = [
      const HomePage(),
      const CartPage(),
      const UserPage(),
      const WalletPage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        // selectedItemColor: Colors.black,
        // unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            currentPage = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/navicon/icon_selected.png",
              color: currentPage == 0 ? Colors.black : Colors.grey,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/navicon/icon_wallet.png",
                color: currentPage == 1 ? Colors.black : Colors.grey),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/navicon/icon_cart.png",
                color: currentPage == 2 ? Colors.black : Colors.grey),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/navicon/icon_user.png",
                color: currentPage == 3 ? Colors.black : Colors.grey),
            label: '',
          ),
        ],
      ),
      body: pages[currentPage],
    );
  }
}
