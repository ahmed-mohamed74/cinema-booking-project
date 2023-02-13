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
  return Container(
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
                  m.poster,
                  fit: BoxFit.cover,
                  width: 250,
                  height: 380,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  m.title,
                  style: const TextStyle(fontSize: 15),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
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
  );
}
