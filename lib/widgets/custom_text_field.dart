import 'package:diabetes_prediction_app/utils/media_query.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final int? initialValue;
  final void Function(int) onChanged;

  const CustomTextField({
    Key? key,
    required this.labelText,
    this.initialValue,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      width: kPad(context) * 4.5,
      height: kHeight(context) * 1.5,
      child: TextField(
        decoration: InputDecoration(
          labelText: labelText,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
        ),
        keyboardType: TextInputType.number, // Set keyboard type to numbers
        onChanged: _handleValueChanged,
      ),
    );
  }

  void _handleValueChanged(String value) {
    if (value.isEmpty) {
      onChanged(0);
    } else {
      final parsedValue = int.tryParse(value);
      if (parsedValue != null) {
        onChanged(parsedValue);
      }
    }
  }
}
