import 'package:flutter/material.dart';
import 'Movie Seat Section.dart';
import 'cinema_location.dart';


class MovieCinema extends StatelessWidget {
  final Location cinema;

  const MovieCinema({
    Key? key,
    required this.cinema,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: cinema.sections
          .map((seatSection) => MovieSeatSection(seats: seatSection.seats))
          .toList(),
    );
  }
}
