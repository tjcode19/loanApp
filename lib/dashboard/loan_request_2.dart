import 'package:flutter/material.dart';
import 'package:loan_app/constants.dart';

class LoanRequestTwo extends StatefulWidget {
  @override
  _LoanRequestTwoState createState() => _LoanRequestTwoState();
}

class _LoanRequestTwoState extends State<LoanRequestTwo> {
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
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(10),
        child: Column(children: [          
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 15),
                child: Text(
                  'Loan Request - Step Two',
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
                    'To get a proceed, we need you to provide atleast one guarantor’s details.',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.black38,
                    ),
                    softWrap: true,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 30, left: 15),
                  child: Text(
                    'Guarantor’s Details ',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold
                    ),
                    softWrap: true,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 14, left: 15),
                  child: Text(
                    'Guarantor’s name',
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
                  borderSide: new BorderSide(color: Colors.black26, width: 2.0),
                ),
              ),
              validator: (val) {
                if (val.length == 0) {
                  return "Name cannot be empty";
                } else {
                  return null;
                }
              },
              keyboardType: TextInputType.text,
              style: new TextStyle(
                color: Colors.black54,
                fontSize: 18.0,
              ),
              cursorColor: Colors.grey,
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 4, left: 15),
                  child: Text(
                    'Guarantor’s relationship',
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
                  borderSide: new BorderSide(color: Colors.black26, width: 2.0),
                ),
              ),
              validator: (val) {
                if (val.length == 0) {
                  return "Relationship cannot be empty";
                } else {
                  return null;
                }
              },
              keyboardType: TextInputType.text,
              style: new TextStyle(
                color: Colors.black54,
                fontSize: 18.0,
              ),
              cursorColor: Colors.grey,
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 4, left: 15),
                  child: Text(
                    'Guarantor’s phone number',
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
                  borderSide: new BorderSide(color: Colors.black26, width: 2.0),
                ),
              ),
              validator: (val) {
                if (val.length == 0) {
                  return "Invalid Phone Number";
                } else {
                  return null;
                }
              },
              keyboardType: TextInputType.phone,
              style: new TextStyle(
                color: Colors.black54,
                fontSize: 18.0,
              ),
              cursorColor: Colors.grey,
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
                "Proceed",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20),
              ),
              onPressed: () {
                Navigator.pushNamed(context, loanRequestThreeRoute);
              },
            ),
          ),
        ]),
      ),
    );
  }
}
