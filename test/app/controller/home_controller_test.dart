import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterando_02/app/controller/home_controller.dart';
import 'package:flutterando_02/app/models/currence_model.dart';

main() {
  final TextEditingController? toText = TextEditingController();
  final TextEditingController? fromText = TextEditingController();
  final homeController = HomeController(toText: toText, fromText: fromText);

  test("deve converter vírgula para ponto", () {
    toText!.text = '2,0';
    homeController.convert();
    expect(fromText!.text, '0.36');
  });

  test("deve converter real para dólar", () {
    toText!.text = '2.0';
    homeController.convert();
    expect(fromText!.text, '0.36');
  });
  test("deve converter dólar para real", () {
    toText!.text = '1.0';
    homeController.toCurrency = CurrencyModel(
        name: 'Dólar', real: 5.42, dolar: 1.0, euro: 0.88, bitcoin: 0.000023);

    homeController.fromCurrency = CurrencyModel(
        name: 'Real', real: 1.0, dolar: 0.18, euro: 0.16, bitcoin: 0.0000043);
    homeController.convert();
    expect(fromText!.text, '5.42');
  });
}
