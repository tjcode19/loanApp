import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loan_app/constants.dart';

class CardSettings extends StatefulWidget {
  @override
  _CardSettingsState createState() => _CardSettingsState();
}

class _CardSettingsState extends State<CardSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(10),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //Icon(Icons.favorite),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: IconButton(
                  color: Colors.black,
                  iconSize: 30.0,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.close),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10, left: 15),
                child: Text(
                  'My Card & Setting',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 4, left: 15),
                  child: Text(
                    'Complete the form below to add money to wallet or existing plans.',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black45,
                    ),
                    softWrap: true,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
          _cardActions(
            SvgPicture.asset("assets/images/svg_payment_card.svg", color: Colors.black, ),
            Text(
              'Debit Cards',
              style: TextStyle(fontSize: 18),
            ),
            Icon(Icons.keyboard_arrow_right),
            availableCardsRoute,
          ),
          _cardActions(
            SvgPicture.asset("assets/images/svg_bank.svg", color: Colors.black,),
            Text(
              'Banks',
              style: TextStyle(fontSize: 18),
            ),
            Icon(Icons.keyboard_arrow_right),
            availableCardsRoute,
          ),
        ]),
      ),
    );
  }

  int selectedRadio;
  void initState() {
    super.initState();
    selectedRadio = 0;
  }

// Changes the selected value on 'onChanged' click on each radio button
  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  Widget _cardActions(
      SvgPicture leadingIcon, Text title, Icon trailingIcon, String routeName) {
    return Card(
      child: ListTile(
        contentPadding: EdgeInsets.fromLTRB(16, 0, 16, 0),
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
