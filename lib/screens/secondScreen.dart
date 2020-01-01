import 'package:flutter/material.dart';
import 'package:projet_annuel/pages/page_parameters.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({ Key key }) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Center(
          child:  Container(
            padding: EdgeInsets.all(20),
            child: TextField(
              decoration:
              new InputDecoration(
                labelText: "Recherchez une université",
              ),
            ),
          )
      ),
    );
  }
}