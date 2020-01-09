import 'package:flutter/material.dart';
import './login_page.dart';



class LoadingPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff111e2e),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new LoginPage())),
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  'LEAF',
                  style: TextStyle(
                    fontFamily: 'RalewayThin',
                    fontSize: 113,
                    color: Color(0xffE6EFE9),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Transform.translate(
                offset: Offset (0,0),
                child: Text(
                'your static life.',
                style: TextStyle(
                  fontFamily: 'RalewayThin',
                  fontSize: 40,
                  color: Color(0xffE6EFE9),
                ),
              ),
            ),
            ),
            Container(
              padding: EdgeInsets.only(top: 55.0),
              child: MyStatefulWidget(),
            ),
          ],
        ),
        ),
      );
  }
}



class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}


// Animiertes Logo
class _MyStatefulWidgetState extends State<MyStatefulWidget>
    with SingleTickerProviderStateMixin {

  AnimationController _controller;
  Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );

    _offsetAnimation = Tween<Offset>(
      begin: Offset(-1.6, 0.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.decelerate,
    ));

    _controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Image.asset(
          'images/LEAF_Logo_mehr_Abstand.png',
        ),
      ),
    );
  }
}