import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:projet_annuel/pages/page_school.dart';
import 'package:flutter/scheduler.dart';

import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void schoolPage(BuildContext context,String school) {
    Navigator.push(
        context, new MaterialPageRoute(builder: (BuildContext context) {
      return new PageSchool(school);
    }));
  }

  List schools = [];
  Future<String> getData() async{
    http.Response response = await http.get(
        Uri.encodeFull("https://my-json-server.typicode.com/typicode/demo/posts"),
        headers: {
          "Accept": "application/json"
          //"Bearer": "fdfdfd"
        }
    );
    /*var credentials = json.encode({
        "username":"georges69@free.fr",
        "password":"Password"
    });
    final request = await http.post(
        "http://70d80d41.eu.ngrok.io/api/login_check",
        body: credentials,
        headers: {
          "Content-Type": "application/json"
        }
    );
    final response2 = json.decode(request.body);*/

    setState(() {
      schools = json.decode(response.body);
      //print(response2['token']);
    });

  }

  @override
  void initState() {
    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Column(
        children: List.generate(schools.length, (index){
          print(schools[1]["title"].toString());
          return new Center(
            child: Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  new ListTile(
                    leading: Icon(Icons.business),
                    title: Text(schools[1]["title"].toString(),

                    ),
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
        }),
      ),
    );
  }
}

