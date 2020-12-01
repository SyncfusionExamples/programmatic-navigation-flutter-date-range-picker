import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

void main() => runApp(ProgrammaticViewNavigation());

class ProgrammaticViewNavigation extends StatefulWidget {
  @override
  ViewNavigationState createState() => ViewNavigationState();
}

class ViewNavigationState extends State<ProgrammaticViewNavigation> {
  DateRangePickerController _controller;

  @override
  void initState() {
    _controller = DateRangePickerController();
    _controller.view=DateRangePickerView.year;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(50, 130, 50, 0),
              child: RaisedButton(child: Text('Change view'),onPressed: (){
                _controller.view=DateRangePickerView.month;
              },),
            ),
            Card(
              margin: const EdgeInsets.fromLTRB(50, 50, 50, 110),
              child: SfDateRangePicker(
                controller: _controller
              ),
            ),
          ],
        ),

        // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
