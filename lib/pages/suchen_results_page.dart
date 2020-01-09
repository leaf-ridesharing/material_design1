import 'package:flutter/material.dart';


class SuchenResultsPage extends StatefulWidget {

  @override
  State createState() => new SuchenResultsPageState();
}

class SuchenResultsPageState extends State<SuchenResultsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff111e2e),
      appBar: AppBar(
          backgroundColor: Color(0xff111e2e),
          automaticallyImplyLeading: true,
          title: Text(
            'Fahrt suchen',
            style: TextStyle(
              fontFamily: 'UbuntuRegular',
              fontSize: 24,
              color: Color(0xffE6EFE9),
            ),
          ),
          leading: IconButton(icon:Icon(Icons.arrow_back, color: Color(0xffe8b641),),
            onPressed:() => Navigator.pop(context, false),
          )
      ),
    );
  }
}