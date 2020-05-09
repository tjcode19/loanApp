import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loan_app/constants.dart';
import 'router.dart' as router;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]).then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(
    //   SystemUiOverlayStyle(
    //     // systemNavigationBarColor: Theme.of(context).primaryColor, // navigation bar color
    //     statusBarColor: Colors.teal[100], // status bar color
    //     //systemNavigationBarIconBrightness: Brightness.light
    //   ),
    // );

    return MaterialApp(
      
      title: 'Loan App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primarySwatch: Colors.green,
        hintColor: Colors.teal[200],
        primaryColor: Colors.teal,
        highlightColor: Colors.teal[500],
        fontFamily: "Nunito",
        accentColor: Colors.teal[100],
        cursorColor: Colors.teal[500],
      ),
      onGenerateRoute: router.generateRoute,
      initialRoute: loginRoute,
      // home: Login(),
    );
  }
}
