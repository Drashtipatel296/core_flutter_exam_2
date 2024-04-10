import 'package:flutter/material.dart';

Widget textFormBox(String name, TextEditingController controller) {
  return TextField(
    controller: controller,
    style: TextStyle(color: Colors.black),
    decoration: InputDecoration(
      label: Text(
        name,
        style: TextStyle(color: Colors.black),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black),
      ),
    ),
  );
}