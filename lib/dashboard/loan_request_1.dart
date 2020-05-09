import 'package:flutter/material.dart';
import 'package:loan_app/constants.dart';

class LoanRequestOne extends StatefulWidget {
  @override
  _LoanRequestOneState createState() => _LoanRequestOneState();
}

class _LoanRequestOneState extends State<LoanRequestOne> {
  String dropdownValue = 'One';
  String _town;

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
                margin: EdgeInsets.only(left: 15),
                child: Text(
                  'Loan Request - Step One',
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
                    'Kindly fill the loan request form',
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
                    'Work Details ',
                    style: TextStyle(
                        fontSize: 16.0,
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold),
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
                    'Are you currently employed?',
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
                  return "Email cannot be empty";
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
                    'Company name',
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
                  return "Email cannot be empty";
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
                    'Employer name',
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
                  return "Email cannot be empty";
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
                    'Your monthly salary',
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
                  return "Email cannot be empty";
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
                    'Monthly salary payday',
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
                  return "Email cannot be empty";
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

          // Container(
          //   padding: EdgeInsets.only(left: 5, right: 5, top: 0),
          //   child: FormField<String>(
          //     validator: (value) {
          //       if (value == null) {
          //         return "Select your area";
          //       }
          //     },
          //     onSaved: (value) {
          //       _town = value;
          //     },
          //     builder: (
          //       FormFieldState<String> state,
          //     ) {
          //       return Column(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: <Widget>[
          //           new InputDecorator(
          //             // decoration: const InputDecoration(
          //             //   contentPadding: EdgeInsets.all(0.0),
          //             //   labelText: 'Area',
          //             // ),
          //             decoration: new InputDecoration(
          //       fillColor: Colors.grey[200],
          //       filled: true,
          //       border: new OutlineInputBorder(
          //         borderRadius: new BorderRadius.circular(5.0),
          //         borderSide: BorderSide.none,
          //       ),
          //       focusedBorder: new OutlineInputBorder(
          //         borderRadius: new BorderRadius.circular(10.0),
          //         borderSide: new BorderSide(color: Colors.black26, width: 2.0),
          //       ),
          //     ),
          //             child: DropdownButtonHideUnderline(
          //               child: DropdownButton<String>(
          //                 hint: new Text("Select Town"),
          //                 value: _town,
          //                 onChanged: (String newValue) {
          //                   state.didChange(newValue);
          //                   setState(() {
          //                     _town = newValue;
          //                   });
          //                 },
          //                 items: <String>[
          //                   'Sukhchayn Garden',
          //                   'Canal Garden',
          //                   'Bahria Town',
          //                 ].map((String value) {
          //                   return new DropdownMenuItem<String>(
          //                     value: value,
          //                     child: new Text(value),
          //                   );
          //                 }).toList(),
          //               ),
          //             ),
          //           ),
          //           SizedBox(height: 1.0),
          //           Text(
          //             state.hasError ? state.errorText : '',
          //             style: TextStyle(
          //                 color: Colors.redAccent.shade700, fontSize: 12.0),
          //           ),
          //         ],
          //       );
          //     },
          //   ),
          // ),

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
                Navigator.pushNamed(context, loanRequestTwoRoute);
              },
            ),
          ),
        ]),
      ),
    );
  }
}
