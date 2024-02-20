import 'package:flutter/material.dart';

import '../models/model.dart';
import '../widgets/custom_elevated_button.dart';
import '../widgets/custom_text_field.dart';

class FormScreen extends StatelessWidget {
  FormScreen({super.key});

  final formKey = GlobalKey<FormState>();
  final predictionModel = DiabetesPredictionModel();
  final url = ''; // http://127.0.0.1:8000/prediction

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            CustomTextField(
                labelText: 'Pregnancies',
                initialValue: 0,
                onChanged: (value) {
                  predictionModel.pregnancies = num.parse(
                    value.toString(),
                  );
                }),
            CustomTextField(
                labelText: 'Glucose',
                onChanged: (value) {
                  predictionModel.glucose = num.parse(
                    value.toString(),
                  );
                }),
            CustomTextField(
                labelText: 'Blood Pressure',
                onChanged: (value) {
                  predictionModel.bloodPressure = num.parse(
                    value.toString(),
                  );
                }),
            CustomTextField(
                labelText: 'Skin Thickness',
                onChanged: (value) {
                  predictionModel.skinThickness = num.parse(
                    value.toString(),
                  );
                }),
            CustomTextField(
                labelText: 'Insulin',
                onChanged: (value) {
                  predictionModel.insulin = num.parse(
                    value.toString(),
                  );
                }),
            CustomTextField(
                labelText: 'BMI',
                onChanged: (value) {
                  predictionModel.bmi = num.parse(
                    value.toString(),
                  );
                }),
            CustomTextField(
                labelText: 'Diabetes Pedigree Function',
                onChanged: (value) {
                  predictionModel.diabetesPedigreeFunction = num.parse(
                    value.toString(),
                  );
                }),
            CustomTextField(
                labelText: 'Age',
                onChanged: (value) {
                  predictionModel.age = num.parse(
                    value.toString(),
                  );
                }),
            const SizedBox(height: 20),
            CustomElevatedButton(
              formKey: formKey,
              predictionModel: predictionModel,
              url: url,
            ),
          ],
        ),
      ),
    );
  }
}
