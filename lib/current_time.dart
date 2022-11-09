import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CurrentTime extends StatefulWidget {
  const CurrentTime({Key? key}) : super(key: key);

  @override

  State<CurrentTime> createState() => _CurrentTimeState();
}

class _CurrentTimeState extends State<CurrentTime> {
  var time = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Text('$time'),


            ],
          ),
        ),
      ),
    );
  }
}
