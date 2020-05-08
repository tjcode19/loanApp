import 'package:flutter/material.dart';

class DashboardStore extends StatefulWidget {
  @override
  _DashboardStoreState createState() => _DashboardStoreState();
}

class _DashboardStoreState extends State<DashboardStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Store',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(10),
      ),
    );
  }
}
