import 'package:flutter/material.dart';
import 'package:loan_app/constants.dart';

class AvailableCards extends StatefulWidget {
  @override
  _AvailableCardsState createState() => _AvailableCardsState();
}

class _AvailableCardsState extends State<AvailableCards> {
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
                margin: EdgeInsets.only(top: 20, left: 15),
                child: Text(
                  'Available Cards ',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                _cardActions(
                  1,
                  Text(
                    'XXXX XXXX XXXX 7738',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  Icon(Icons.keyboard_arrow_right),
                ),
                _cardActions(
                  2,
                  Text(
                    'XXXX XXXX XXXX 1594',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  Icon(Icons.keyboard_arrow_right),
                ),
                Card(
                  child: ListTile(
                    contentPadding: EdgeInsets.all(10),
                    title: Text(
                      'Add New Card',
                      style: TextStyle(color: Colors.teal, fontSize: 18),
                    ),
                    trailing: Icon(
                      Icons.add,
                      size: 30,
                      color: Theme.of(context).primaryColor,
                    ),
                    onTap: () {
                      _settingModalBottomSheet(context);
                    },
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }

  int selectedRadio;
  void initState() {
    super.initState();
    selectedRadio = 1;
  }

// Changes the selected value on 'onChanged' click on each radio button
  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  Widget _cardActions(int value, Text title, Icon trailingIcon) {
    return Card(
      child: ListTile(
        contentPadding: EdgeInsets.all(6),
        title: title,
        trailing: Radio(
          value: value,
          groupValue: selectedRadio,
          activeColor: Colors.teal,
          onChanged: (val) {
            print("Radio $val");
            setSelectedRadio(val);
          },
        ),
        //onTap: setSelectedRadio(value),
      ),
    );
  }

  void _settingModalBottomSheet(context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (BuildContext bc) {
        return Container(
          margin: EdgeInsets.only(right: 5, left: 5),
          decoration: BoxDecoration(
              color: Colors.white,
              //borderRadius: BorderRadius.all(Radius.circular(15)),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              boxShadow: [
                BoxShadow(
                    blurRadius: 8, color: Colors.grey[300], spreadRadius: 2)
              ]),
          padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('Add Card'),
              Text('Card Number'),
              Container(
                padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                child: TextFormField(
                  decoration: new InputDecoration(
                    fillColor: Colors.grey[200],
                    filled: true,
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(5.0),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                      borderSide: new BorderSide(
                          color: Theme.of(context).primaryColor, width: 2.0),
                    ),
                  ),
                  validator: (val) {
                    if (val.length == 0) {
                      return "You must enter PIN";
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.number,
                ),
              ),
              Text('Card Expiry'),
              Container(
                padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                child: TextFormField(
                  decoration: new InputDecoration(
                    fillColor: Colors.grey[200],
                    filled: true,
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(5.0),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                      borderSide: new BorderSide(
                          color: Theme.of(context).primaryColor, width: 2.0),
                    ),
                  ),
                  validator: (val) {
                    if (val.length == 0) {
                      return "You must enter PIN";
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.number,
                ),
              ),
              const SizedBox(height: 10),
              Container(
                width: double.infinity,
                margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: RaisedButton(
                  padding: EdgeInsets.all(16),
                  highlightElevation: 5.0,
                  elevation: 3.0,
                  splashColor: Colors.teal[100],
                  highlightColor: Colors.teal[200],
                  color: Color.fromRGBO(45, 157, 127, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(5.0),
                  ),
                  child: Text(
                    "Add Card",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text('Secured by [payment authenticator]')
            ],
          ),
        );
      },
    );
  }
}
