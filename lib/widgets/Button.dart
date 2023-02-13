import 'package:flutter/material.dart';

Widget Btn(String name) {
  return ElevatedButton
    (
    onPressed: null,
    child: Text(name,style: TextStyle(color: Colors.black),),style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(color: Colors.grey)
            )
        )
    ),);
}
