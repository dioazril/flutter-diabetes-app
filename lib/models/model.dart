class DiabetesPredictionModel {
  late num pregnancies;
  late num glucose;
  late num bloodPressure;
  late num skinThickness;
  late num insulin;
  late num bmi;
  late num diabetesPedigreeFunction;
  late num age;

  // Add a toJson() method to convert the model to JSON format for API requests
  Map<String, dynamic> toJson() {
    return {
      'Pregnancies': pregnancies,
      'Glucose': glucose,
      'BloodPressure': bloodPressure,
      'SkinThickness': skinThickness,
      'Insulin': insulin,
      'BMI': bmi,
      'DiabetesPedigreeFunction': diabetesPedigreeFunction,
      'Age': age,
    };
  }
}
