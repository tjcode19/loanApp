import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loan_app/constants.dart';

class DashboardAccount extends StatefulWidget {
  @override
  _DashboardAccountState createState() => _DashboardAccountState();
}

class _DashboardAccountState extends State<DashboardAccount> {
  static const TextStyle optionStyle =
      TextStyle(color: Colors.black, fontSize: 18);

  double iconH = 23;
  double iconW = 18;

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
                SvgPicture.asset(
                  'assets/images/svg_basic_info.svg', 
                  color: Colors.purple[100],
                  height: iconH,
                  width: iconW,
                ),
                Text(
                  'Basic Information',
                  style: optionStyle,
                ),
                Icon(Icons.keyboard_arrow_right),
                basicInfoRoute,
              ),
              _cardActions(
                SvgPicture.asset(
                  'assets/images/svg_kyc.svg', 
                  color: Colors.greenAccent,
                  height: iconH,
                  width:60,
                ),
                Text(
                  'Update KYC',
                  style: optionStyle,
                ),
                Icon(Icons.keyboard_arrow_right),
                updateKYCRoute,
              ),
              _cardActions(
                SvgPicture.asset(
                  'assets/images/svg_bvn.svg',
                  color: Colors.blue[200],
                  height: iconH,
                  width: iconW,
                ),
                Text(
                  'Add BVN',
                  style: optionStyle,
                ),
                Icon(Icons.keyboard_arrow_right),
                addBVNRoute,
              ),
              _cardActions(
                SvgPicture.asset(
                  'assets/images/svg_lock.svg',
                  color: Colors.green[200],
                  height: iconH,
                  width: iconW,
                ),
                Text(
                  'Password Settings',
                  style: optionStyle,
                ),
                Icon(Icons.keyboard_arrow_right),
                passwordRoute,
              ),
              _cardActions(
                SvgPicture.asset(
                  'assets/images/svg_payment_card.svg',
                  color: Colors.amber,
                  height: iconH,
                  width: iconW,
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

  Widget _cardActions(
      SvgPicture leadingIcon, Text title, Icon trailingIcon, String routeName) {
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
