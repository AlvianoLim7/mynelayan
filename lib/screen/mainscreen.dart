import 'package:flutter/material.dart';
import 'package:mynelayan/model/user.dart';
import 'package:mynelayan/screen/profiletab.dart';
import 'package:mynelayan/screen/sellertab.dart';

import 'buyertab.dart';
import 'newstab.dart';

class MainScreen extends StatefulWidget {
  final User user;
  const MainScreen({super.key, required this.user});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late List<Widget> tabchildren;
  int _currentIndex = 0;
  String maintitle = "Buyer";

  @override
  void initState() {
    super.initState();
    print(widget.user.name);
    tabchildren = [
      BuyerTab(user: widget.user),
      SellerTab(user: widget.user),
      NewsTab(user: widget.user),
      ProfileTab(user: widget.user),
    ];
  }

  @override
  void dispose() {
    super.dispose();
    print("dispose");
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(maintitle)),
      body: tabchildren[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.attach_money,
              ),
              label: "Buyer"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.store_mall_directory,
              ),
              label: "Seller"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.newspaper,
              ),
              label: "News"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: "Profile")
        ],
      ),
    );
  }

  void onTabTapped(int value) {
    setState(() {
      _currentIndex = value;
      if (_currentIndex == 0) {
        maintitle = "Buyer";
      }
      if (_currentIndex == 1) {
        maintitle = "Seller";
      }
      if (_currentIndex == 3) {
        maintitle = "Profile";
      }
      if (_currentIndex == 2) {
        maintitle = "News";
      }
    });
  }
}
