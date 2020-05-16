import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Builder(builder: (context)=> buildShowModalBottomSheet(context)) ,
      
    );
  }

  

  buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet<void>(
    isDismissible: false,
    context: context,
    backgroundColor: Colors.transparent,
    builder: (BuildContext bc) {
      return Container(
        height: 260,
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
            Image.asset("assets/images/check_ic_lg.png", height: 50.0, width: 50.0,),
            const SizedBox(height: 10),
            Container(
              margin: EdgeInsets.fromLTRB(60, 10, 60, 20),
              width: 180.0,
                child: Text(
              'Funding Successful',
              style: TextStyle(fontSize: 22),
              softWrap: true,
              textAlign: TextAlign.center,
            )),
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
                 // Navigator.pushNamed(context, dashboardRoute);
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