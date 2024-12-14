import 'package:calculator_app/app/app.locator.dart';
import 'package:calculator_app/features/calculator/calculator_repository.dart';

class CalculatorService {
  final _repository = locator<CalculatorRepository>();

  String evaluate(String expression) {
    return _repository.evaluate(expression);
  }

  String evaluateScientific(String expression) {
    return _repository.evaluateScientific(expression);
  }
}
