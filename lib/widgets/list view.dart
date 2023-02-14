import 'package:flutter/material.dart';

import 'package:scroll_snap_list/scroll_snap_list.dart';

import '../models.dart';

 /*SizedBox(
          height: 250,
          child: ScrollSnapList(
            itemBuilder: _buildListItem,
            itemCount: Movies.length,
            itemSize: 150,
            onItemFocus: (index) {},
            dynamicItemSize: true,
          ),
        ));
  }*/
  Widget buildListItem(BuildContext context, int index) {
    Movie m = Movies[index];
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