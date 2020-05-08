import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loan_app/constants.dart';
import 'router.dart' as router;

import 'widgets/login.dart';

// void main() => runApp(MyApp());

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(new MyApp());
  });
  
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
     // systemNavigationBarColor: Theme.of(context).primaryColor, // navigation bar color
     // statusBarColor: Colors.teal, // status bar color
      //systemNavigationBarIconBrightness: Brightness.light
    ),
  );

    return MaterialApp(
      title: 'Loan App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       // primarySwatch: Colors.green,
        hintColor: Colors.teal[200],
        primaryColor: Colors.teal,
        fontFamily: "Nunito",
        accentColor: Colors.green[50],
        cursorColor: Colors.green[500],
      ),
      onGenerateRoute: router.generateRoute,
     // initialRoute: dashboardRoute,
     // home: Login(),
    );
  }
}

