import 'package:flutter/material.dart';

class DashboardLoanHistory extends StatefulWidget {
  @override
  _DashboardLoanHistoryState createState() => _DashboardLoanHistoryState();
}

class _DashboardLoanHistoryState extends State<DashboardLoanHistory> {
  @override
  Widget build(BuildContext context) {
    List<int> record = [1, 2, 3, 4, 5, 6];
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Loan History',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(10),
        child: Column(
          children: List.generate(record.length, (index) {
            return Card(
              child: ListTile(
                //contentPadding: EdgeInsets.all(5),
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
                    style: TextStyle(fontSize: 11, color: Colors.black38),
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
                onTap: () {
                  print('cow');
                },
              ),
            );
          }),
        ),
      ),
    );
  }
}
