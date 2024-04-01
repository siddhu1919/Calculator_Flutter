import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class CalculatorProvider extends ChangeNotifier {
  final compController = TextEditingController();

  setValue(String value) {
    String str = compController.text;
    switch (value) {
      case "C":
        compController.clear();
        break;
      case "AC":
        compController.text = str.substring(0, str.length - 1);
        break;
      case "X":
        compController.text += "*";
        break;
      case "=":
        calculate();
        break;
      default:
        compController.text += value;
        break;
    }
    compController.selection = TextSelection.fromPosition(
        TextPosition(offset: compController.text.length));
  }

  // calculate() {
  //   String text = compController.text;
  //   compController.text = text.interpret().toString();
  // }

  Future<void> calculate() async {
    try {
      String text = compController.text;
      // Assuming `interpret()` is a method that can throw an exception.
      compController.text = text.interpret().toString();
    } catch (e) {
      // Directly show the error in the controller's text
      compController.text = "Error";

      // Log the error for debugging purposes
      print("Error occurred: $e");

      // Wait for 1.5 seconds
      await Future.delayed(Duration(milliseconds: 1500));

      // Clear the text in the controller, which should also update the UI
      compController.clear();
    }
  }

  @override
  void dispose() {
    super.dispose();
    compController.dispose();
  }
}
