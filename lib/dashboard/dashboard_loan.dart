import 'package:flutter/material.dart';

class DashboardLoan extends StatefulWidget {
  @override
  _DashboardLoanState createState() => _DashboardLoanState();
}

class _DashboardLoanState extends State<DashboardLoan> {
  double iconSize = 40;
  double spacing10 = 10;
  double spacing20 = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Loans', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Container(
              child: Table(
                children: [
                  TableRow(children: [
                    Container(
                      padding: EdgeInsets.all(spacing20),
                      decoration: BoxDecoration(
                        color: Colors.teal[50],
                        border: Border(
                          bottom: BorderSide(width: 1.0, color: Colors.black12),
                        ),
                      ),
                      child: Column(children: [
                        Text(
                          'LOAN AMOUNT',
                          style: TextStyle(fontSize: 11, color: Colors.black87),
                        ),
                        RichText(
                          text: TextSpan(
                            text: '₦',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.teal[200],
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                  text: '1,500,000.',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: '00',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 14,
                                        color: Colors.teal[200],
                                      ),
                                    )
                                  ]),
                            ],
                          ),
                        ),
                      ]),
                    ),
                  ]),
                  TableRow(children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          left: BorderSide(width: 1.0, color: Colors.black12),
                          right: BorderSide(width: 1.0, color: Colors.black12),
                        ),
                      ),
                      padding: EdgeInsets.all(spacing20),
                      alignment: Alignment.center,
                      //child: Text('Loan Monthly Pay Back: ₦524,999.99'),
                      child: RichText(
                        text: TextSpan(
                          text: 'Loan Monthly Pay Back: ',
                          style: TextStyle(
                            fontSize: 11,
                            color: Colors.black87,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: '₦',
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.teal[200],
                                ),
                                children: [
                                  TextSpan(
                                    text: '529,500.',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '99',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 11,
                                      color: Colors.teal[200],
                                    ),
                                  ),
                                ]),
                          ],
                        ),
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Table(
                      border:
                          TableBorder.all(color: Colors.black12, width: 1.0),
                      children: [
                        TableRow(
                          children: [
                            Container(
                                padding: EdgeInsets.all(7),
                                alignment: Alignment.center,
                                child: Text(
                                  '3 Months Timeline',
                                  style: TextStyle(fontSize: 11),
                                )),
                            Container(
                                padding: EdgeInsets.all(7),
                                alignment: Alignment.center,
                                child: Text(
                                  'Due Date: March 30th, 2020',
                                  style: TextStyle(fontSize: 11),
                                ))
                          ],
                        )
                      ],
                    )
                  ]),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: spacing20, bottom: spacing20),
              width: double.infinity,
              child: RaisedButton(
                padding: EdgeInsets.all(16),
                highlightElevation: 5.0,
                elevation: 3.0,
                splashColor: Colors.teal[300],
                highlightColor: Colors.teal[300],
                color: Color.fromRGBO(45, 157, 127, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(5.0),
                ),
                onPressed: () {},
                child: Text(
                  'Repay Loan Now',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(spacing10),
              decoration: BoxDecoration(
                  borderRadius: new BorderRadius.all(Radius.circular(5)),
                  border: Border.all(color: Colors.black12)),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        'Early Repayment',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Divider(
                    height: 1.0,
                    color: Colors.black38,
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.all(10),
                    leading: FlutterLogo(),
                    //title: ,
                    subtitle: Text(
                        'You can get access to higher loan amount when you repay existing loans in time.'),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment(-1.0, 0.0),
              margin: EdgeInsets.only(bottom: 2, top: 20),
              child: Text(
                'Loan History',
                style: TextStyle(
                    color: Color.fromRGBO(152, 152, 152, 1), fontSize: 15),
              ),
            ),
            Card(
              child: ListTile(
                //contentPadding: EdgeInsets.all(10),
                leading: Container(
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: Colors.teal),
                  width: 10,
                  height: 10,
                ),
                title: Text(
                  'Loan request approved',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
                subtitle: Text('Date: Tue, 17th Mar 2020 11:35:03 GMT.',
                    style: TextStyle(color: Colors.black, fontSize: 11)),
                trailing: RichText(
                            text: TextSpan(
                              text: '₦',
                              style: TextStyle(fontSize: 11, color: Colors.black38 ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: '20,000.',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                  text: '00',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 11,
                                    color: Colors.black38,
                                  ),
                                )
                              ],
                            ),
                          ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: spacing10),
              padding: EdgeInsets.all(spacing20),
              width: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.teal[50],
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  border: Border.all(width: 1.0, color: Colors.black12)),
              child: Text('No recent activity'),
            )
          ],
        ),
      ),
    );
  }
}
