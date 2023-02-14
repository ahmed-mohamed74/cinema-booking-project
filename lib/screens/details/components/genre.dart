
import 'package:b_swam/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Genre extends StatelessWidget{
  final String genre;

  const Genre({Key? key, required this.genre}): super(key: key);
  @override
  Widget build(BuildContext context){
    return Expanded(child: Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(left: kDefaultPadding),
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding/4,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black26),
      ),
      child: Text(
        genre,
        style: TextStyle(
          color: kTextColor.withOpacity(0.8),
          fontSize: 16,
          decoration: TextDecoration.none,
        ),
      ),
    ));
  }
}