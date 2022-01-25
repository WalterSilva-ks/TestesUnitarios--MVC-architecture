// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutterando_02/app/models/currence_model.dart';

class CurrencyBox extends StatelessWidget {
  final List<CurrencyModel>? items;
  final CurrencyModel? selectedItem;

  final TextEditingController? controller;
  final void Function(CurrencyModel? model)? onChanged;

  const CurrencyBox(
      {Key? key,
      this.items,
      this.selectedItem,
      this.controller,
      this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: SizedBox(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 23),
              width: 100,
              child: Expanded(
                flex: 1,
                child: DropdownButton<CurrencyModel>(
                  value: selectedItem,
                  iconSize: 40,
                  iconEnabledColor: Colors.amber[900],
                  isExpanded: true,
                  underline: Container(
                    height: 1,
                    color: Colors.amber[900],
                  ),
                  onChanged: onChanged,
                  items: items!
                      .map((e) => DropdownMenuItem<CurrencyModel>(
                          value: e, child: Text(e.name)))
                      .toList(),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
            ),
            SizedBox(
              width: 220,
              child: TextField(
                controller: controller,
                decoration: const InputDecoration(
                  enabled: true,
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
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
