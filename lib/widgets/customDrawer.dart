import 'package:flutter/material.dart';
import 'package:projet_annuel/pages/page_parameters.dart';
import 'package:projet_annuel/widgets/styledText.dart';

void changePage(BuildContext context){
  Navigator.pop(context);
  Navigator.push(context, new MaterialPageRoute(builder:(BuildContext context){
    return new PageParameters("Paramètres de l'application");
  }));
}

Drawer customDrawer(BuildContext context){
  return Drawer(
    child: Container(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
                color: Colors.redAccent
            ),
            child: Column(
              children: <Widget>[
                new Icon(Icons.account_circle,color: Colors.white,size: 90),
                styledText("Sh0r",fontSize: 25.0)
              ],
            ),
          ),
          ListTile(
            title: styledText("Profil", color: Colors.redAccent, textAlign: TextAlign.left),
            leading: new Icon(Icons.person_outline, color: Colors.redAccent),
            onTap: (){
              changePage(context);
            },
          ),
          ListTile(
            title: styledText("Paramètres", color: Colors.redAccent, textAlign: TextAlign.left),
            leading: new Icon(Icons.build, color: Colors.redAccent,),
            onTap: (){
              changePage(context);
            },
          ),
          Container(
            child: Column(
              children: <Widget>[
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RaisedButton(
                      color: Colors.green,
                      textColor: Colors.white,
                      onPressed: (){
                      },

                      child: Row(
                        children: <Widget>[
                          Text('Connexion'),
                          Icon(Icons.power_settings_new)
                        ],
                      ),
                    ),
                    RaisedButton(
                      color: Colors.red,
                      textColor: Colors.white,
                      onPressed: (){
                      },
                      child: Row(
                        children: <Widget>[
                          Text('Déconnexion'),
                          Icon(Icons.power_settings_new)
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}