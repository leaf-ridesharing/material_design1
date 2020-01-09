import 'package:flutter/material.dart';
import 'package:material_design1/pages/bieten_first_page.dart';
import 'package:material_design1/pages/loading_page.dart';
import 'package:material_design1/pages/suchen_first_page.dart';

/// This Widget is the main application widget.
class HomePage extends StatefulWidget {

  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Suchen',
      style: optionStyle,
    ),
    Text(
      'Index 3: Bieten',
      style: optionStyle,
    ),
    Text(
      'Index 4: Fahrten',
      style: optionStyle,
    ),
    Text(
      'Index 5: Profil',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {

    //bool accepted = false;

    return Scaffold(
      backgroundColor: Color(0xff111e2e),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[

            Stack(
              alignment: AlignmentDirectional.topCenter,
              children: <Widget>[
                Positioned(
                    top: -30,
                    right: 0,
                    child: Image.asset(
                      'images/Home_Lupe.png',
                      height: 200,
                      width: 200,
                    ),
                  ),

                Container(
                  child: DragTarget(
                    builder:
                        (context, List<int> candidateData, rejectedData) {
                      return Image.asset(
                          'images/LEAF_Logo_gestrichelt.png',
                          height: 180,
                          width: 180,
                        );
                    },
                    onWillAccept: (data) {
                      return true;
                    },
                    onAccept: (data) {
                      if (data == 1) {
                        Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new SuchenFirstPage()));
                      }
                    },
                  ),
                ),
              ],
            ),


            // Drag
            Container(
              child: Draggable(
                axis: Axis.vertical,
                //dragAnchor: ,
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: <Widget>[
                    Image.asset('images/LEAF_Logo_mehr_Abstand.png',
                      height: 180,
                      width: 180,
                    ),
                    Positioned(
                      left: 83,
                      bottom: 82,
                      child: Icon(Icons.change_history),
                    ),
                  ],
                ),
                feedback: Image.asset('images/LEAF_Logo_mehr_Abstand.png',
                  height: 180,
                  width: 180,
                ),
                childWhenDragging: Container(
                  margin: EdgeInsets.all(90),
                ),
                data: 1,
              ),
            ),
            

            Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: <Widget>[

                Container(
                  child: Positioned(
                    bottom: -60,
                    left: 90,
                    child: Image.asset(
                      'images/Home_Hand.png',
                      height: 220,
                      width: 220,
                    ),
                  ),
                ),

                Container(
                  child: DragTarget(
                    builder: (context, List<int> candidateData, rejectedData) {
                      return Image.asset(
                          'images/LEAF_Logo_gestrichelt.png',
                          height: 180,
                          width: 180,
                      );
                    },
                    onWillAccept: (data) {
                      return true;
                    },
                    onAccept: (data) {
                      if(data == 1) {
                        Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new BietenFirstPage()));
                      }
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),



      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            boxShadow: [BoxShadow(color: Colors.black54, blurRadius: 15)]),
        child: BottomNavigationBar(
          elevation: 200,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xff111e2e),
          iconSize: 25,
          selectedFontSize: 12,
          showUnselectedLabels: false,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home,
              ),
              title: Text('Home',
                style: TextStyle(
                  fontFamily: 'UbuntuRegular',
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search,
              ),
              title: Text('Suchen',
                style: TextStyle(
                  fontFamily: 'UbuntuRegular'
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.fingerprint,
              ),
              title: Text('Bieten',
                style: TextStyle(
                    fontFamily: 'UbuntuRegular'
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.directions_car,
              ),
              title: Text('Fahrten',
                style: TextStyle(
                    fontFamily: 'UbuntuRegular'
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person,
              ),
              title: Text('Profil',
                style: TextStyle(
                    fontFamily: 'UbuntuRegular'
                ),
              ),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Color(0xff0cce6b),
          unselectedItemColor: Color(0xffE6EFE9),
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}