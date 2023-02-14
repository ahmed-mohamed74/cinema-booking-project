import 'package:b_swam/screens/details/screen.dart';
import 'package:flutter/material.dart';

import '../models.dart';

Widget buildListItem(BuildContext context, int index, int categoryIndex) {
  Movie movie = Movies[categoryIndex][index];
  return InkWell(
    onTap: () => Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => Screen(movie: movie),
      ),
    ),
    child: Container(
      width: 300,
      height: 300,
      child: Column(
        children: [
          Card(
            elevation: 12,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Column(
                children: [
                  Image.asset(
                    movie.poster,
                    fit: BoxFit.cover,
                    width: 250,
                    height: 380,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    movie.title,
                    style: const TextStyle(fontSize: 15),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${movie.rating}',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '${movie.numOfRating} Reviews',
                          style: const TextStyle(color: Colors.blue),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget buildListItem1(BuildContext context, int index) {
  Movie m = comingSoon[index];
  return SizedBox(
    width: 400,
    height: 600,
    child: Card(
      elevation: 12,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Column(
          children: [
            Image.asset(
              m.poster,
              fit: BoxFit.cover,
              width: 300,
              height: 360,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              m.title,
              style: const TextStyle(fontSize: 15),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${m.rating}',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '${m.numOfRating} Reviews',
                    style: const TextStyle(color: Colors.blue),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}
