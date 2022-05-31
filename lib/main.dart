import 'package:flutter/material.dart';
import 'package:flutter_airline_app/screens/seat_select_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Airline',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      ),
      home: SeatSelectScreen()
    );
  }
}
