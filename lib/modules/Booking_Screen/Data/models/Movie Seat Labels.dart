import 'package:flutter/material.dart';
import 'Seat Status label.dart';

import 'data.dart';

class MovieSeatlabels extends StatelessWidget {
  const MovieSeatlabels({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 46),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: seatLabels
            .map(
              (label) => SeatsStatusLabel(
            color: label.color,
            label: label.name,
          ),
        )
            .toList(),
      ),
    );
  }
}
