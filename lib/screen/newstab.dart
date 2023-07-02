import 'package:flutter/material.dart';
import 'package:mynelayan/model/user.dart';

class NewsTab extends StatefulWidget {
  final User user;
  const NewsTab({super.key, required this.user});

  @override
  State<NewsTab> createState() => _NewsTabState();
}

class _NewsTabState extends State<NewsTab> {
  String maintitle = "News";

  @override
  void initState() {
    super.initState();
    print("News");
  }

  @override
  void dispose() {
    super.dispose();
    print("Dispose");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(maintitle)),
    );
  }
}
