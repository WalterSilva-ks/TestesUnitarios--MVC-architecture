import 'package:flutter/material.dart';

class CurrencyBox extends StatelessWidget {
  String moedasPrincipalDe = "Real";
  List<String> moedas = <String>["Real", "Dólar", "Bitcoin", "Euro"];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: SizedBox(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 23),
              width: 100,
              child: Expanded(
                flex: 1,
                child: DropdownButton<String>(
                  iconSize: 40,
                  iconEnabledColor: Colors.amber[900],
                  isExpanded: true,
                  value: moedasPrincipalDe,
                  underline: Container(
                    height: 1,
                    color: Colors.amber[900],
                  ),
                  onChanged: (value) {
                    moedasPrincipalDe = value.toString();
                  },
                  items: moedas.map<DropdownMenuItem<String>>(
                    (String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    },
                  ).toList(),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
            ),
            const SizedBox(
              width: 220,
              child: TextField(
                enabled: true,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  labelText: "1,00",
                  labelStyle: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
