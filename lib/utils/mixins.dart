import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

mixin Formats {
  bool isValidMail(String value) {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[com]{3,3}))$')
        .hasMatch(value);
  }

  static String priceFormat(int price, BuildContext context) =>
      NumberFormat.simpleCurrency(locale: "ru", name: 'sum', decimalDigits: 0).format(price);
}
