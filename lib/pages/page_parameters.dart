import 'package:flutter/material.dart';

class PageParameters extends StatelessWidget{
  String title;

  PageParameters(String title){
    this.title = title;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(this.title),
        backgroundColor: Colors.redAccent,
      ),
      body: new Center(

      ),
    );
  }


}