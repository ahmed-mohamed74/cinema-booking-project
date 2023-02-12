import 'package:flutter/material.dart';

Widget defaultElevatedButton(function, text) {
  return ElevatedButton(
    style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          Colors.lightBlueAccent,
        ),
        fixedSize: MaterialStateProperty.all(
          const Size(250, 52),
        ),
        shape: MaterialStateProperty.all(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
          ),
        )),
    onPressed: function,
    child: Text(text),
  );
}
