import 'package:flutter/material.dart';

Widget Btn(String name, Function() function) {
  return ElevatedButton(
    onPressed: function,
    child: Text(
      name,
      style: TextStyle(color: Colors.white),
    ),
    style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(color: Colors.white)))),
  );
}
