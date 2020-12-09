import 'package:chart/ss2.dart';
import 'package:chart/string.dart';
import 'package:flutter/material.dart';
import 'ss.dart';

import 'package:intl/intl.dart';
import 'dart:async';

import 'package:chart/HomePage.dart';

class NewTripDateView extends StatefulWidget {
  final String2 trip;

  NewTripDateView({Key key, @required this.trip}) : super(key: key);

  @override
  _NewTripDateViewState createState() => _NewTripDateViewState();
}

class _NewTripDateViewState extends State<NewTripDateView> {
  // DateTime pickedDate = DateTime.now();
  // DateTime pickedDate2 = DateTime.now().add(Duration(days: 7));
  //
  // Future<Null> _pickedDate(BuildContext context) async {
  //   final DateTime date = await showDatePicker(
  //     context: context,
  //     initialDate: pickedDate,
  //     firstDate: DateTime(DateTime.now().year - 1),
  //     lastDate: pickedDate2,
  //   );
  //   if (date != null && date!= pickedDate) {
  //     setState(() {
  //       pickedDate=date;
  //     });
  //   }
  // }
  //
  // Future<Null> _pickedDate2(BuildContext context) async {
  //   final DateTime date2 = await showDatePicker(
  //     context: context,
  //     initialDate: pickedDate2,
  //     firstDate: pickedDate,
  //     lastDate: DateTime.now(),
  //   );
  //   if (date2 != null && date2!= pickedDate2) {
  //     setState(() {
  //      pickedDate2 = date2;
  //     });
  //   }
  // }
  //

  DateTime pickedDate = DateTime.now();
  DateTime pickedDate1 = DateTime.now();
  //DateTime _lastDate;
  Future<Null> selectDate(BuildContext context) async {
    final DateTime date = await showDatePicker(
      context: context,
      initialDate: pickedDate,
      firstDate: DateTime(2018),
      lastDate: pickedDate1,
    );
    if (date != null && date != pickedDate) {
      setState(() {
        pickedDate = date;
      });
    }
  }
  Future<Null> selectDate1(BuildContext context) async {
    final DateTime date2= await showDatePicker(
      context: context,
      initialDate:pickedDate1,
      firstDate:pickedDate,
      lastDate: DateTime.now(),
    );
    if (date2 != null && date2 != pickedDate1) {
      setState(() {
        pickedDate1= date2;
      });
    }
  }




  @override
  Widget build(BuildContext context) {


    String _formatDate= DateFormat("dd/MM/yyyy").format(pickedDate);
    String _formatDate2= DateFormat("dd/MM/yyyy").format(pickedDate1);
    return Column(

      children:<Widget> [

        Container(
          height: 45.0,
          width: 360.0,

          margin: EdgeInsets.only(top: 10, left: 10.0, right: 10.0),
          decoration: BoxDecoration(
            // color: Colors.yellow,
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(15)
          ),
          child:Container(
            child:  ListTile(
              leading: Text("From: \n"),

              title: Text(
                  "$_formatDate"),
              trailing: Icon(Icons.keyboard_arrow_down),
              onTap:(){
                selectDate(context);
              },

            ),
          ),
        ),
        Container(
          height: 45.0,
          width: 360.0,

          margin: EdgeInsets.only(top: 10, left: 10.0, right: 10.0),
          decoration: BoxDecoration(
            // color: Colors.yellow,
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(15)
          ),
          child: ListTile(
            title: Text(
                "$_formatDate2"),
            leading: Text("To: \n"),
            trailing: Icon(Icons.keyboard_arrow_down),
            onTap:(){
              selectDate1(context);
            }

          ),
        ),
        GestureDetector(
          child: Container(
              height: 40.0,
              width: 360.0,

              margin: EdgeInsets.only(top: 10, left: 10.0, right: 10.0),
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Center(child: Text("Confirm", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),))
          ),
          onTap: (){
            // widget.trip.date1=pickedDate;
            // widget.trip.date2=pickedDate2;
            // widget.trip.date1=pickedDate;
            // widget.trip.date2=pickedDate1;
            //
            // Navigator.push(
            //      context,
            //      MaterialPageRoute(builder: (context) => MyHomePage(trip: widget.trip));
            // );

          },
        ),


      ],);


    // return Scaffold(
    //     appBar: AppBar(
    //       title: Text('Create Trip - Date'),
    //     ),
    //     body: Center(
    //         child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: <Widget>[
    //         Text("Location ${widget.trip.title}"),
    //
    //         Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //           children: <Widget>[
    //             Text(
    //                 "Start Date: ${DateFormat('MM/dd/yyyy').format(_startDate).toString()}"),
    //             Text(
    //                 "End Date: ${DateFormat('MM/dd/yyyy').format(_endDate).toString()}"),
    //           ],
    //         ),
    //         RaisedButton(
    //           child: Text("Continue"),
    //           onPressed: () {
    //             widget.trip.startDate = pickedDate;
    //             widget.trip.endDate = pickedDate2;
    //             Navigator.push(
    //               context,
    //               MaterialPageRoute(
    //                   builder: (context) =>
    //                       NewTripBudgetView(trip: widget.trip)),
    //             );
    //           },
    //         ),
    //       ],
    //     )));
  }
}
