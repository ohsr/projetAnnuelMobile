import 'package:flutter/material.dart';
import 'package:projet_annuel/pages/page_parameters.dart';

class SecondScreen extends StatelessWidget {

  void schoolPage(BuildContext context) {
    Navigator.push(
        context, new MaterialPageRoute(builder: (BuildContext context) {
      return new PageParameters("Paramètres");
    }));
  }

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