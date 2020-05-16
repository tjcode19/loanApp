import 'package:flutter/material.dart';
import 'package:loan_app/constants.dart';

class DashboardHome extends StatefulWidget {
  @override
  _DashboardHomeState createState() => _DashboardHomeState();
}

class _DashboardHomeState extends State<DashboardHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Container(
          child: IconButton(
            icon: Icon(
              Icons.person,
            ),
            onPressed: () {},
          ),
        ),
        title: RichText(
          text: TextSpan(
            text: 'Hey, ',
            style: TextStyle(fontSize: 16),
            children: <TextSpan>[
              TextSpan(
                text: 'Tolulope',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 16,
                  color: Colors.teal[100],
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    //color: Theme.of(context).primaryColor,
                    padding: EdgeInsets.only(
                        left: 24, right: 24, top: 14, bottom: 14),
                    decoration: new BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius:
                          new BorderRadius.all(const Radius.circular(5.0)),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.black54,
                          offset: Offset(1.0, 2.0),
                          blurRadius: 0.001,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WALLET BALANCE',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                            ),
                          ),
                          const SizedBox(height: 3),
                          RichText(
                            text: TextSpan(
                              text: '₦',
                              style: TextStyle(
                                  fontSize: 18, color: Colors.teal[100]),
                              children: <TextSpan>[
                                TextSpan(
                                  text: '20,000.',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                    color: Colors.white,
                                  ),
                                ),
                                TextSpan(
                                  text: '00',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 18,
                                    color: Colors.teal[100],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //Will expand to fill all remaining space
                  Container(
                    padding: EdgeInsets.all(14),
                    decoration: new BoxDecoration(
                      color: Colors.teal[100],
                      borderRadius:
                          new BorderRadius.all(const Radius.circular(5.0)),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.teal,
                          offset: Offset(1.0, 2.0),
                          blurRadius: 0.001,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'NORMAL CONTRIBUTION',
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 11,
                            ),
                          ),
                          const SizedBox(height: 3),
                          RichText(
                            text: TextSpan(
                              text: '₦',
                              style: TextStyle(
                                  fontSize: 18, color: Colors.black38),
                              children: <TextSpan>[
                                TextSpan(
                                  text: '5,000.',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                  text: '00',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 18,
                                    color: Colors.black38,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 5, 20, 25),
              child: Row(
                //Creates even space between each item and their parent container
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, fundWalletRoute);
                    },
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(top: 10, bottom: 10),
                            child: Icon(
                              Icons.home,
                              size: 32,
                              color: Colors.teal,
                            ),
                            decoration: new BoxDecoration(
                              color: Colors.teal[100],
                              borderRadius: new BorderRadius.all(
                                const Radius.circular(5.0),
                              ),
                            ),
                          ),
                          Text('Store'),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, fundWalletRoute);
                    },
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(top: 10, bottom: 10),
                            child: Icon(
                              Icons.account_balance_wallet,
                              size: 32,
                              color: Colors.teal,
                            ),
                            decoration: new BoxDecoration(
                              color: Color.fromRGBO(239, 255, 224, 1),
                              borderRadius: new BorderRadius.all(
                                const Radius.circular(5.0),
                              ),
                            ),
                          ),
                          Text('Fund Wallet'),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, withdrawFundRoute);
                    },
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(top: 10, bottom: 10),
                            child: Icon(
                              Icons.dashboard,
                              size: 32,
                              color: Colors.teal,
                            ),
                            decoration: new BoxDecoration(
                              color: Colors.teal[100],
                              borderRadius: new BorderRadius.all(
                                const Radius.circular(5.0),
                              ),
                            ),
                          ),
                          Text('Withdraw'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment(-1.0, 0.0),
                      margin: EdgeInsets.only(bottom: 10),
                      child: Text(
                        'Existing Loan',
                        style: TextStyle(
                            color: Color.fromRGBO(152, 152, 152, 1),
                            fontSize: 15),
                      ),
                    ),
                    Container(
                      color: Colors.teal[50],
                      padding: EdgeInsets.all(5),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment(-1.0, 0.0),
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'Loan Repayment',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Divider(
                            height: 1.0,
                            color: Colors.black38,
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.only(
                                    left: 10,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'N10,000',
                                        style: TextStyle(
                                          fontSize: 24,
                                          color: Theme.of(context).primaryColor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text('Loan Due Date: March 30th, 2020',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                child: RaisedButton(
                                  padding: EdgeInsets.all(10),
                                  highlightElevation: 5.0,
                                  elevation: 3.0,
                                  splashColor: Colors.teal[300],
                                  highlightColor: Colors.teal[300],
                                  color: Theme.of(context).primaryColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(5.0),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'Repay Loan',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment(-1.0, 0.0),
                      margin: EdgeInsets.only(bottom: 6, top: 10),
                      child: Text(
                        'Products Store',
                        style: TextStyle(
                            color: Color.fromRGBO(152, 152, 152, 1),
                            fontSize: 15),
                      ),
                    ),
                    Container(
                      color: Color.fromRGBO(239, 255, 224, 1),
                      height: 130,
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.only(bottom: 10),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment(-1.0, 0.0),
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    width: 1.0, color: Colors.teal[100]),
                              ),
                            ),
                            child: Text(
                              'Cart',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text('There are no items for sale',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.teal[50],
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.only(bottom: 10),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment(-1.0, 0.0),
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    width: 1.0, color: Colors.teal[100]),
                              ),
                            ),
                            child: Text(
                              'Cart',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'View available items',
                                        style: TextStyle(
                                          fontSize: 22,
                                          color: Theme.of(context).primaryColor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text('There are 10 items for sale today',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                child: RaisedButton(
                                  padding: EdgeInsets.all(10),
                                  highlightElevation: 5.0,
                                  elevation: 3.0,
                                  splashColor: Colors.teal[300],
                                  highlightColor: Colors.teal[300],
                                  color: Theme.of(context).primaryColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(5.0),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'View Cart',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
