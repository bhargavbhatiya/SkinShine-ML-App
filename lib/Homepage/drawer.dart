import 'package:flutter/material.dart';
import 'package:skin_ML/Homepage/23DiseasesDataPage.dart';
import 'package:skin_ML/services/reminder.dart';
import 'package:skin_ML/services/ourteam.dart';
import 'package:skin_ML/news/newspage.dart';
import 'package:skin_ML/services/disease_predict_model.dart';
import 'package:skin_ML/services/chatbot.dart';
import 'package:skin_ML/services/login.dart';
import 'package:skin_ML/services/maplauncher.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    child: Image.asset(
                  "assets/SkinShine with text.png",
                  width: 137,
                  height: 137,
                ))
              ],
            ),
            decoration: BoxDecoration(
              color: Color.fromRGBO(14, 49, 80, 1),
            ),
          ),
          ListTile(
            title: Text('News'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NewsPage()),
              );
            },
          ),
          ListTile(
            title: Text('Water Reminder'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyReminder()),
              );
            },
          ),
          ListTile(
            title: Text('Find Doctor Nearby You'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyMap()),
              );
            },
          ),
          ListTile(
            title: Text('Chat'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyBot()),
              );
            },
          ),
          ListTile(
            title: Text('Read about diseases'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DiseasesList()),
              );
            },
          ),
          ListTile(
            title: Text('Solve daily problems'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Detect Disease'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ML_Model()),
              );
            },
          ),
          ListTile(
            title: Text('About us'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OurTeam()),
              );
            },
          ),
          ListTile(
            title: Text('Sign out'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => login()),
              );
            },
          ),
        ],
      ),
    );
  }
}
