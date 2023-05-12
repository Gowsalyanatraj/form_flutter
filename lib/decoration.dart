import 'package:flutter/material.dart';

TextFormField formField({required String labelText, required String hintText}) {
  return TextFormField(
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Please enter some text';
      }
      return null;
    },
    decoration: InputDecoration(
      hintText: hintText,
      labelText: labelText,
      border: const OutlineInputBorder(),
    ),
  );
}
