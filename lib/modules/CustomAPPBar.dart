import 'package:flutter/material.dart';

import 'App Colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 1,
      child: AppBar(
        leading: InkWell(
          onTap: () => Navigator.of(context).pop(),
          child: const Icon(
            Icons.arrow_back_ios,
            size: 16,
          ),
        ),
        backgroundColor: AppColors.primaryBackgroudColor,
        elevation: 0,
        title: const Text(
          'Select Seats',
          style: TextStyle(fontSize: 15),
        ),
        centerTitle: true,
      ),
    );
  }
}
