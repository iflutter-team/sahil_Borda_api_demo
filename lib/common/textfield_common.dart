import 'package:flutter/material.dart';

Widget textFieldCommon(TextEditingController controller, String label) {
  return TextField(
    controller: controller,
    decoration: InputDecoration(
        label: Text(label),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
  );
}
