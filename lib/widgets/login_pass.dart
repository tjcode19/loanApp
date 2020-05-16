import 'package:flutter/material.dart';

import 'package:loan_app/dashboard/dashboard.dart';

class LoginPass extends StatefulWidget {
  @override
  _LoginPassState createState() => _LoginPassState();
}

class _LoginPassState extends State<LoginPass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      resizeToAvoidBottomPadding: true,
      // appBar: AppBar(
      //   title: Text('Welcome Tolu', style: TextStyle(fontWeight: FontWeight.bold),),
      // ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //Icon(Icons.favorite),
                Container(
                  margin: EdgeInsets.only(top: 40,),
                  child: IconButton(
                    color: Colors.white,
                    iconSize: 34.0,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.close),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //Icon(Icons.favorite),
                Container(
                  margin: EdgeInsets.only(top: 107, left: 20),
                  child: Text(
                    'Welcome back, Tolu ',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(top: 8, left: 20),
                  child: Text(
                    'Save. Loan. Achieve.',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            _pageForm(context),
          ],
        ),
      ),
    );
  }
}

Widget _pageForm(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(20, 40, 20, 8),
    child: Column(
      children: [
        TextField(
          obscureText: true,
          keyboardType: TextInputType.text,
          style: TextStyle(color: Colors.black54, fontSize: 18.0),
          cursorColor: Colors.grey,
          textInputAction: TextInputAction.send, 
          onSubmitted: (value) {
            print(value);
          },
          decoration: new InputDecoration(
                fillColor: Colors.teal[100],
                filled: true,
                labelText: 'Enter Password',
                floatingLabelBehavior: FloatingLabelBehavior.never,
                hintStyle: TextStyle(color: Colors.white),
                labelStyle: TextStyle(color: Colors.black54, fontSize: 18.0, ),
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(5.0),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                  borderSide: new BorderSide(color: Colors.white, width: 2.0),                  
                ),
              ),
        ),
        const SizedBox(height: 20),
        Container(
          width: double.infinity,
          child: RaisedButton(
            padding: EdgeInsets.all(16),
            highlightElevation: 5.0,
            elevation: 3.0,
            splashColor: Colors.teal[300],
            highlightColor: Colors.teal[300],
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(10.0),
            ),
            child: Text(
              "Proceed",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                  fontSize: 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Dashboard()),
              );
            },
          ),
        ),
        const SizedBox(height: 20),
      ],
    ),
  );
}
