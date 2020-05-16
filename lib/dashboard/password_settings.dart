import 'package:flutter/material.dart';
import 'package:loan_app/constants.dart';

class PasswordSettings extends StatefulWidget {
  @override
  _PasswordSettingsState createState() => _PasswordSettingsState();
}

class _PasswordSettingsState extends State<PasswordSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[50],
        elevation: 0.0,
        leading: IconButton(
          color: Colors.black,
          iconSize: 30.0,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.close),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(10),
        child: Column(children: [
          
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 37, left: 15),
                child: Text(
                  'Password Settings',
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
                    'Change your password to a new one',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black38,
                    ),
                    softWrap: true,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ],
          ),
         
          const SizedBox(height: 40),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 4, left: 15),
                  child: Text(
                    'What is the current password?',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black87,
                    ),
                    softWrap: true,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 5),
            child: TextField(
              obscureText: false,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal)),
                fillColor: Colors.teal,
                labelText: '',
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 4, left: 15),
                  child: Text(
                    'Enter a new password',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black87,
                    ),
                    softWrap: true,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 5),
            child: TextField(
              obscureText: false,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal)),
                  fillColor: Colors.teal,),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 4, left: 15),
                  child: Text(
                    'Confirm your new password',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black87,
                    ),
                    softWrap: true,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 5),
            child: TextField(
              obscureText: false,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal)),
                fillColor: Colors.teal,
                labelText: '',
              ),
            ),
          ),
         
          const SizedBox(height: 40),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(15, 0, 15, 10),
            child: RaisedButton(
              padding: EdgeInsets.all(16),
              highlightElevation: 5.0,
              elevation: 3.0,
              splashColor: Colors.teal[300],
              highlightColor: Colors.teal[300],
              color: Color.fromRGBO(45, 157, 127, 1),
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(10.0),
              ),
              child: Text(
                "Change Password",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20),
              ),
              onPressed: () {
                _settingModalBottomSheet(context);
              },
            ),
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

  Widget _cardActions(int value, Text title, Icon trailingIcon) {
    return Card(
      child: ListTile(
        contentPadding: EdgeInsets.all(6),
        title: title,
        trailing: Radio(
          value: value,
          groupValue: selectedRadio,
          activeColor: Colors.blue,
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
          height: 160,
          margin: EdgeInsets.only(right: 5, left: 5),
          decoration: BoxDecoration(
        color: Colors.white,
        //borderRadius: BorderRadius.all(Radius.circular(15)),
        borderRadius: BorderRadius.only(topLeft:Radius.circular(15), topRight:Radius.circular(15), ),
        boxShadow: [
          BoxShadow(
              blurRadius: 8, color: Colors.grey[300], spreadRadius: 2)
        ]),
          padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.check),
              const SizedBox(height: 10),
              Text('Password Changed Successfully', style: TextStyle(fontSize: 22), textAlign: TextAlign.center,),
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
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  child: Text(
                    "Dismiss",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
