import 'package:flutter/material.dart';
import 'package:movie/components/genreCard.dart';
import 'package:movie/data/model/movies.dart';
import 'package:movie/presentation/constants/constants.dart';
import 'package:movie/presentation/screens/details/components/backDropAndRating.dart';
import 'package:movie/presentation/screens/details/components/castAndCrew.dart';
import 'package:movie/presentation/screens/details/components/genres.dart';
import 'package:movie/presentation/screens/details/components/plot.dart';
import 'package:movie/presentation/screens/details/components/titleDurationAndFavbutton.dart';

class body extends StatelessWidget {
  final Movie movie;
  const body({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        backDropAndRating(movie: movie, size: size),
        titleDurationAndFavbutton(movie: movie),
        genre(movie: movie),
        plot(movie: movie),
        castAndCrew(cast: movie.cast),
      ],
    );
  }
}
