import 'package:flutter/material.dart';
import '../widgets/date_time.dart';
import 'form_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Diabetes Prediction'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // TODO: Fix the UI for the date picker and form screen
          const CustomDatePicker(restorationId: 'main'),
          FormScreen(),
        ],
      ),
    );
  }
}
