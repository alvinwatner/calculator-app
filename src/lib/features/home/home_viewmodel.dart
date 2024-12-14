import 'package:calculator_app/app/app.locator.dart';
import 'package:calculator_app/features/calculator/calculator_service.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  final _calculatorService = locator<CalculatorService>();

  String _displayText = '0';
  bool _isScientificMode = false;

  String get displayText => _displayText;
  bool get isScientificMode => _isScientificMode;

  final List<String> buttons = [
    '7',
    '8',
    '9',
    '/',
    '4',
    '5',
    '6',
    '*',
    '1',
    '2',
    '3',
    '-',
    '0',
    '.',
    '=',
    '+'
  ];

  final List<String> scientificButtons = [
    'sin',
    'cos',
    'tan',
    '^',
    'log',
    'ln',
    '(',
    ')',
    '√',
    'π',
    'e',
    '%'
  ];

  void toggleScientificMode() {
    _isScientificMode = !_isScientificMode;
    notifyListeners();
  }

  void onButtonPressed(String button) {
    if (button == '=') {
      calculate();
    } else {
      updateDisplay(button);
    }
  }

  void updateDisplay(String value) {
    if (_displayText == '0') {
      _displayText = value;
    } else {
      _displayText += value;
    }
    notifyListeners();
  }

  void calculate() {
    try {
      if (_isScientificMode) {
        _displayText = _calculatorService.evaluateScientific(_displayText);
      } else {
        _displayText = _calculatorService.evaluate(_displayText);
      }
    } catch (e) {
      _displayText = 'Error';
    }
    notifyListeners();
  }
}
