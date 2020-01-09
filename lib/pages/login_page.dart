import 'package:flutter/material.dart';
import 'package:material_design1/pages/home_page.dart';



class LoginPage extends StatefulWidget {
  @override
  State createState() => new LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  TextEditingController _controller;


  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  void dispose() {
    _controller.dispose();
    super.dispose();
  }





  Widget build(BuildContext context) {

    return Scaffold(

        backgroundColor: Color(0xff111e2e),

        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(16.0),
                alignment: Alignment.center,
                child: Image.asset(
                  'images/LEAF_Logo_mehr_Abstand.png',
                  //scale: 0.5,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                style: TextStyle(
                    color: Color(0xffE6EFE9),
                    fontFamily: 'UbuntuRegular'
                ),
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person,
                    color: Color(0xffe8b641),
                  ),
                  contentPadding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
                  labelText: 'Benutzername',
                  labelStyle: TextStyle(
                    color: Color(0xff4171AB),
                    fontFamily: 'UbuntuRegular',
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff4171AB)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff0cce6b)),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                style: TextStyle(
                  color: Color(0xffE6EFE9),
                  fontFamily: 'UbuntuRegular',
                ),
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Color(0xffe8b641),
                  ),
                  contentPadding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
                  labelText: 'Passwort',
                  labelStyle: TextStyle(
                      color: Color(0xff4171AB),
                      fontFamily: 'UbuntuRegular'
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff4171AB)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff0cce6b)),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: RaisedButton(
                onPressed: () => Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new HomePage())),
                color: Color(0xff0cce6b),
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(18.0),
                ),
                child: Text(
                  'EINLOGGEN',
                  style: TextStyle(
                    color: Color(0xff111e2e),
                    fontSize: 14,
                    fontFamily: 'UbuntuMedium',
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.center,
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondRoute()),
                  );
                },
                child: Text(
                  "ANMELDEN",
                  style: TextStyle(
                    color: Color(0xffe8b641),
                    fontFamily: 'UbuntuMedium',
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ],
        )
    );
  }
}



// Aktuell Anmelde Screen, ist aber Müll --> extra File
class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}
