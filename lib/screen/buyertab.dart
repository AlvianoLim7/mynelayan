import 'package:flutter/material.dart';
import 'package:mynelayan/model/user.dart';

class BuyerTab extends StatefulWidget {
  final User user;
  const BuyerTab({super.key, required this.user});

  @override
  State<BuyerTab> createState() => _BuyerTabState();
}

class _BuyerTabState extends State<BuyerTab> {
  String maintitle = "Buyer";

  @override
  void initState() {
    super.initState();
    print("Buyer");
  }

  @override
  void dispose() {
    super.dispose();
    print("Dispose");
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(maintitle),
    );
  }
}
