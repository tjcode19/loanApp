import 'package:flutter/material.dart';
import 'package:loan_app/constants.dart';

class DashboardAccount extends StatefulWidget {
  @override
  _DashboardAccountState createState() => _DashboardAccountState();
}

class _DashboardAccountState extends State<DashboardAccount> {
  static const TextStyle optionStyle =
      TextStyle(color: Colors.black, fontSize: 18);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Account',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              _cardActions(
                Icon(
                  Icons.person,
                  size: 32,
                  color: Colors.purple,
                ),
                Text(
                  'Basic Information',
                  style: optionStyle,
                ),
                Icon(Icons.keyboard_arrow_right),
                basicInfoRoute,
              ),
              _cardActions(
                Icon(
                  Icons.picture_in_picture,
                  size: 32,
                  color: Colors.teal,
                ),
                Text(
                  'Update KYC',
                  style: optionStyle,
                ),
                Icon(Icons.keyboard_arrow_right),
                updateKYCRoute,
              ),
              _cardActions(
                Icon(
                  Icons.satellite,
                  size: 32,
                  color: Colors.blue,
                ),
                Text(
                  'Add BVN',
                  style: optionStyle,
                ),
                Icon(Icons.keyboard_arrow_right),
                addBVNRoute,
              ),
              _cardActions(
                Icon(
                  Icons.lock,
                  size: 32,
                  color: Colors.green,
                ),
                Text(
                  'Password Settings',
                  style: optionStyle,
                ),
                Icon(Icons.keyboard_arrow_right),
                passwordRoute,
              ),
              _cardActions(
                Icon(
                  Icons.card_membership,
                  size: 32,
                  color: Colors.orange,
                ),
                Text(
                  'My Card & Setting',
                  style: optionStyle,
                ),
                Icon(Icons.keyboard_arrow_right),
                cardSettingsRoute,
              ),
            ],
          )),
    );
  }

  Widget _cardActions(Icon leadingIcon, Text title, Icon trailingIcon, String routeName) {
    return Card(
      child: ListTile(
        contentPadding: EdgeInsets.all(10),
        leading: Container(child: leadingIcon),
        title: title,
        trailing: trailingIcon,
        onTap: () {
          Navigator.pushNamed(context, routeName);
        },
      ),
    );
  }
}
