// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutterando_02/app/componentes/currency_box.dart';
import 'package:flutterando_02/app/models/currence_model.dart';

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<String> moedas = <String>["Real", "Dólar", "Bitcoin", "Euro"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 100,
          left: 20,
          right: 20,
          bottom: 20,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                child: Image.asset(
                  'assets/images/conversorIcon.jpg',
                  width: 200,
                  height: 200,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(100)),
              ),
              const SizedBox(
                height: 20,
              ),
              CurrencyBox(),
              CurrencyBox(),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange[800],
                  elevation: 0,
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  "Converter",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
