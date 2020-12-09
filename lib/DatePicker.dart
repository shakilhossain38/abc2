import 'package:chart/chart1.dart';
import 'package:chart/chart2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'string.dart';

class DatePicker extends StatefulWidget {
  // final String2 trip;
  // DatePicker({Key key, @required this.trip}): super (key: key);
  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  DateTime pickedDate;
  DateTime pickedDate2;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pickedDate = DateTime.now();
    pickedDate2= DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    String _formatDate= DateFormat("dd/MM/yyyy").format(pickedDate);
    String _formatDate2= DateFormat("dd/MM/yyyy").format(pickedDate2);
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
              onTap:
              _pickedDate,

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
            onTap:
            _pickedDate2,

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

            // Navigator.push(
            //      context,
            //      MaterialPageRoute(builder: (context) => String2())
            // );

          },
        ),


      ],);
  }
  _pickedDate() async{
    DateTime date= await showDatePicker(
        context: context,
        initialDate: pickedDate,
        firstDate: DateTime(DateTime.now().year-1),
        lastDate: pickedDate2,
        builder: (context, child){
          return SingleChildScrollView(child: child,);
        }

    );


    if(date!=null){
      setState(() {
        pickedDate=date;
      });
    }

  }


  _pickedDate2() async {

    DateTime date2= await showDatePicker(
      context: context,
      initialDate: pickedDate2,
      firstDate: pickedDate,
      lastDate: DateTime.now(),
    );
    if(date2!=null){
      setState(() {
        pickedDate2=date2;
      });
    }
  }

}
