import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_design1/pages/loading_page.dart';


// main
void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {



    // Status Bar und Navigation Bar - Farbe anpassen
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0xff111e2e),
      systemNavigationBarColor: Color(0xff111e2e),
    ));

    return MaterialApp(
      title: _title,
      theme: new ThemeData(
        brightness: Brightness.light,
        primaryColor: Color(0xff0cce6b),
        accentColor: Color(0xff0cce6b),
        backgroundColor: Color(0xff111e2e),
        fontFamily: 'UbuntuRegular',
    ),
      home: new LoadingPage(),
    );
  }
}




