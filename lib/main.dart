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
        textTheme: TextTheme(
          button: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
          
          
        ),
      ),

      onGenerateRoute: router.generateRoute,
      initialRoute: loginRoute,
      // home: Login(),
    );
  }
}
