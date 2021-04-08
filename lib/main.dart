import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

void main() => runApp(ProgrammaticViewNavigation());

class ProgrammaticViewNavigation extends StatefulWidget {
  @override
  ViewNavigationState createState() => ViewNavigationState();
}

class ViewNavigationState extends State<ProgrammaticViewNavigation> {
  final DateRangePickerController _controller = DateRangePickerController();

  @override
  void initState() {
    _controller.view = DateRangePickerView.year;
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
              child: ElevatedButton(
                child: Text('Change view'),
                onPressed: () {
                  _controller.view = DateRangePickerView.month;
                },
              ),
            ),
            Card(
              margin: const EdgeInsets.fromLTRB(50, 50, 50, 110),
              child: SfDateRangePicker(controller: _controller),
            ),
          ],
        ),
      ),
    );
  }
}
