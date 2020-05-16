import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loading/indicator/ball_pulse_indicator.dart';
import 'package:loading/loading.dart';
import 'package:loan_app/constants.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Future<bool> _onBackPressed() {
    //Navigator.of(context).pop();
    exit(0);
  }

  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        resizeToAvoidBottomPadding: true,
        // appBar: AppBar(
        //   title: Text('Welcome Tolu', style: TextStyle(fontWeight: FontWeight.bold),),
        // ),
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light.copyWith(
              // statusBarColor: Colors.white,
              ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //Icon(Icons.favorite),
                      Container(
                          margin: EdgeInsets.only(top: 80),
                          child: Image.asset('images/logo.png')),
                    ],
                  ),
                  // Container(
                  //   color: Colors.lightBlue,
                  //   child: Center(
                  //     child: Loading(
                  //         indicator: BallPulseIndicator(),
                  //         size: 100.0,
                  //         color: Colors.pink),
                  //   ),
                  // ),
                  Container(
                    margin: const EdgeInsets.only(top: 38),
                    child: Text(
                      'Welcome to LOGICOOP',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal,
                      ),
                    ),
                  ),
                  textSection,
                  _pageForm(context),
                ]),
          ),
        ),
      ),
    );
  }
}

Widget textSection = Container(
  padding: const EdgeInsets.fromLTRB(32, 10, 32, 16),
  child: Text(
    'Build your Savings & get Loans with ease to achieve your financial goals.',
    softWrap: true,
    textAlign: TextAlign.center,
    style: TextStyle(fontSize: 15),
  ),
);

Widget _pageForm(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(20, 40, 20, 8),
    child: Column(
      children: [
        TextField(
          obscureText: false,
          autofocus: false,
          keyboardType: TextInputType.phone,
          maxLength: 11,
          decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.never,
            border:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.teal)),
            fillColor: Colors.grey[100],
            filled: true,
            labelText: 'Enter Phone Number',
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
              //   Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => LoginPass()),

              // );
              Navigator.pushNamed(context, loginPassRoute);
              //Navigator.of(context).popUntil(ModalRoute.withName(dashboardRoute));
            },
          ),
        ),
        const SizedBox(height: 20),
      ],
    ),
  );
}
