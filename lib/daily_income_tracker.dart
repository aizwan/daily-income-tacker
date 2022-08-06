import 'package:daily_income_tracker/screens/homepage.dart';
import 'package:flutter/material.dart';

class DailyIncomeTracker extends StatelessWidget {
  const DailyIncomeTracker({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Daily Income Tracker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
