import 'package:flutter/material.dart';
import 'package:projet_annuel/pages/page_school.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatelessWidget {

  void schoolPage(BuildContext context,String school) {
    Navigator.push(
        context, new MaterialPageRoute(builder: (BuildContext context) {
      return new PageSchool(school);
    }));
  }


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return new Center(
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.business),
                  title: Text('Université de Paris'),
                  subtitle: Text(
                      'Université situé dans Paris fournissant des cours sur l\'économie, l\'informatique, la biologie ou les mathématiques'),
                ),
                ButtonTheme.bar(
                  child: ButtonBar(
                    children: <Widget>[
                      FlatButton(
                        child: const Text('NOTER & COMMENTER'),
                        onPressed: () {
                          schoolPage(context, "Université de Paris");
                        },
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}