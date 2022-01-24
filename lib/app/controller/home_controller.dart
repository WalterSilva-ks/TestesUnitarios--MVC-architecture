// ignore_for_file: empty_constructor_bodies

import 'package:flutter/material.dart';
import 'package:flutterando_02/app/models/currence_model.dart';

class HomeController {
  List<CurrencyModel>? currencies;
  final TextEditingController? toText;
  final TextEditingController? fromText;
  CurrencyModel? toCurrency;
  CurrencyModel? fromCurrency;

  HomeController(
      {this.currencies,
      this.toText,
      this.fromText,
      this.toCurrency,
      this.fromCurrency}) {
    currencies = CurrencyModel.getCurrencies();
    toCurrency = currencies![0];
    fromCurrency = currencies![1];
  }

  void convert() {
    String text = toText!.text;
    double value = double.tryParse(text) ?? 1.0;
    double? returnValue = 0;

    if (fromCurrency!.name == "Real") {
      returnValue = value * toCurrency!.real;
    } else if (fromCurrency!.name == "Dólar") {
      returnValue = value * toCurrency!.dolar;
    } else if (fromCurrency!.name == "Euro") {
      returnValue = value * toCurrency!.euro;
    } else if (fromCurrency!.name == "Bitcoin") {
      returnValue = value * toCurrency!.bitcoin;
    }
    fromText!.text = returnValue.toStringAsFixed(2);
  }
}
