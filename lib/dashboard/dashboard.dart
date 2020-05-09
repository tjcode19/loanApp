import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loan_app/constants.dart';
import 'package:loan_app/widgets/login.dart';
import 'dashboard_home.dart';
import 'dashboard_loan.dart';
import 'dashboard_history.dart';
import 'dashboard_account.dart';
import 'dashboard_store.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static List<Widget> _widgetOptions = <Widget>[
    DashboardHome(),
    DashboardLoan(),
    DashboardStore(),
    DashboardLoanHistory(),
    DashboardAccount(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Future<bool> _onBackPressed() {
    if (_selectedIndex == 0) {
      return showDialog(
            context: context,
            builder: (context) => new AlertDialog(
              title: new Text('Logout!'),
              content: new Text('Are you sure you want to logout?'),
              actions: <Widget>[
                new GestureDetector(
                  onTap: () => Navigator.of(context).pop(false),
                  child: Text("NO"),
                ),
                SizedBox(height: 16),
                new GestureDetector(
                  onTap: () => {
                    //SystemChannels.platform.invokeMethod<void>('SystemNavigator.pop'),
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Login())),
                  },
                  child: Text("YES"),
                ),
              ],
            ),
          ) ??
          false;
    } else {
      _onItemTapped(0);
    }
  }

  @override
  Widget build(BuildContext context) {  
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(       
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light.copyWith( statusBarColor: Colors.white, ), 
                  child: Container(
              child: IndexedStack(
            index: _selectedIndex,
            children: _widgetOptions,
          )),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet),
              title: Text('Loan'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              title: Text('Store'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.insert_chart),
              title: Text('Activity'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text('Account'),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Theme.of(context).primaryColor,
          unselectedItemColor: Color.fromRGBO(112, 112, 112, 1),
          onTap: _onItemTapped,
          backgroundColor: Color.fromRGBO(247, 247, 247, 1),
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }
}

class Destination {
  const Destination(this.title, this.icon, this.color);
  final String title;
  final IconData icon;
  final MaterialColor color;
}

const List<Destination> allDestinations = <Destination>[
  Destination('Home', Icons.home, Colors.teal),
  Destination('Business', Icons.business, Colors.cyan),
  Destination('School', Icons.school, Colors.orange),
  Destination('Flight', Icons.flight, Colors.blue)
];

//https://medium.com/flutter/getting-to-the-bottom-of-navigation-in-flutter-b3e440b9386
