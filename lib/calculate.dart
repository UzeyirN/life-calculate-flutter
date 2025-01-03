import 'package:lifecycle/user_data.dart';

class Calculate {
  final UserData? userData;

  Calculate(this.userData);

  double calculate() {
    double result;

    result = 80 + userData!.sportDays - userData!.cigarettesCount;
    result += (userData!.height / userData!.weight);

    if (userData!.chooseGender == 'WOMAN') {
      return result + 3;
    } else {
      return result;
    }
  }
}
