import 'package:flutter/material.dart';

/// This Widget is the main application widget.
class BietenFirstPage extends StatefulWidget {

  @override
  State createState() => new BietenFirstPageState();
}

class BietenFirstPageState extends State<BietenFirstPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xff111e2e),
      body: Center(
        child: Text('Bieten'),
      ),
    );
  }
}