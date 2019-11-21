import 'package:flutter/material.dart';

class PageSchool extends StatelessWidget {

  String school;
  PageSchool(String school){
    this.school = school;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(school),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: new Text(school),
      ) ,
    );
  }
}