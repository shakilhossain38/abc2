
import 'package:chart/chart1.dart';
import 'package:chart/chart2.dart';
import 'package:chart/ss1.dart';
import 'package:chart/ss2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'DatePicker.dart';




class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length:3,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.orange,
              title: Center(child: Text("Charts")),
              bottom: TabBar(
                tabs: [
                  Text("Monthly", style: TextStyle(color: Colors.black, fontSize: 20),),
                  Text("Total", style: TextStyle(color: Colors.black, fontSize: 20),),
                 Text("Total", style: TextStyle(color: Colors.black, fontSize: 20),),
                  //Text("Total", style: TextStyle(color: Colors.black, fontSize: 20),),
                ],),
            ),
            body: TabBarView(children: [
              //ChartApp2(),
             // DatePicker(),
              DatePicker(),
              ChartApp(),
              NewTripDateView(),

            ],)
        ),
      ),

    );
  }
}
