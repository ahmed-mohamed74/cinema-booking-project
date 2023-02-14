
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class CastCard extends StatelessWidget {
  final Map cast;

  const CastCard({Key? key, required this.cast}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
     margin: EdgeInsets.only(right: kDefaultPadding),
      width: 100,
      child: Column(
        children: [
          Container(
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                    cast['image']
                )
              )
            ),
          ),
          SizedBox(height: kDefaultPadding/2,),
          Text(
            cast['orginalName'],
            maxLines: 2,
            textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15,
                color: Colors.black,
                decoration: TextDecoration.none,
              )
          ),
          SizedBox(height: 5,),
          Container(
            height: 20,
            child: Text(
                cast['CharacterName'],
                maxLines: 1,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black54,
                  decoration: TextDecoration.none,
                  fontSize: 11,
                )
            ),
          )
        ],
      ),
    );
  }
}