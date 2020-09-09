import 'package:flutter/material.dart';
import './firstscreen.dart';
import './secondscreen.dart';
import './thirdscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.account_circle),
            title: Text('Jobs'),
            centerTitle: true,
            actions:[
            Icon(Icons.more_vert)
            ],
            bottom: TabBar(

              tabs: [
                Tab(text: "My Feed"),
                Tab(text: "Saved"),
                Tab(text: "Search")
              ],
            ),
          ),
          body: TabBarView(
            children: [
              firstscreen(),
              secondscreen(),
              thirdscreen(),
            ],
          ),


        ),
      ),
    );
  }
}

