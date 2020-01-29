import 'package:flutter/material.dart';
import 'package:rental_home_ui/screens/home_screen.dart';

void main() => runApp(RentalApp());

class RentalApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rental Home App',
      theme: ThemeData(
        fontFamily: 'FredokaOne',
        primaryColor: Color(0xFF5468ff),
      ),
      home: HomeScreen(),
    );
  }
}
