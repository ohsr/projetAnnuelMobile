import 'package:flutter/material.dart';
import 'package:projet_annuel/screens/homeScreen.dart';
import 'package:projet_annuel/screens/secondScreen.dart';
import 'package:projet_annuel/screens/thirdScreen.dart';
import 'package:projet_annuel/widgets/customDrawer.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {

  int _selectedIndex = 0;
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  final List<Widget> _children = [
    HomeScreen(),
    SecondScreen(),
    ThirdScreen(),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        drawer: customDrawer(context),
        body: _children[_selectedIndex] ,
        bottomNavigationBar: BottomNavigationBar(
          onTap: _onItemTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Accueil')
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title: Text('Rechercher'),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.location_on),
                title: Text('Localisation')
            )
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.redAccent,
        ),
    );
  }

}