import 'package:flutter/material.dart';

class DateTimePicker extends StatefulWidget {
  const DateTimePicker({Key? key}) : super(key: key);

  @override
  State<DateTimePicker> createState() => _DateTimePickerState();
}
DateTime _dateTime = DateTime.now();
class _DateTimePickerState extends State<DateTimePicker> {
  void _showDatePicker(){
    showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(2000), lastDate:DateTime(3000)).then((value) {
      setState(() {
        _dateTime = value!;
      });
      });
  }

  TimeOfDay _timeOfDay = TimeOfDay(hour: 8, minute: 30);
  void _showTimePicker(){
    showTimePicker(context: context, initialTime: TimeOfDay.now()

    ).then((value)  {
      setState(() {
        _timeOfDay = value!;
      });
    } );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(_timeOfDay.format(context).toString()),
              ElevatedButton(onPressed: _showTimePicker,
                  child: Text("Pick Time")),
             Text(_dateTime.toString()),
              ElevatedButton(onPressed: _showDatePicker, child: Text("pick date"))
            ],
          ),
        ),

      )
    );
  }
}

