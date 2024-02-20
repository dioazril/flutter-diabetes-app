import 'dart:convert';

import 'package:diabetes_prediction_app/utils/media_query.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../models/model.dart';

class CustomElevatedButton extends StatelessWidget {
  CustomElevatedButton({
    super.key,
    required this.formKey,
    required this.predictionModel,
    required this.url,
  });

  final GlobalKey<FormState> formKey;
  final DiabetesPredictionModel predictionModel;
  final String url;
  final dio = Dio();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(kPad(context) * 3.0, kHeight(context) * 0.5),
      ),
      onPressed: () async {
        try {
          var dataJson = json.encode(predictionModel.toJson());
          if (formKey.currentState!.validate()) {
            // Kirim data ke endpoint API
            debugPrint(formKey.currentState.toString());
            var response = await dio.post(url, data: dataJson);
            debugPrint(response.statusCode.toString());
            // Tampilkan hasil prediksi
            if (!context.mounted) return;
            if (response.statusCode == 200) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(response.data)));
            }
          }
        } catch (e) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(e.toString()),
          ));
        }
      },
      child: const Text('Predict'),
    );
  }
}
