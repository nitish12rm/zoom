import 'package:flutter/material.dart';
import 'package:movie/components/genreCard.dart';
import 'package:movie/data/model/movies.dart';
import 'package:movie/presentation/constants/constants.dart';

class genre extends StatelessWidget {
  final Movie movie;
  const genre({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: kDefaultPadding / 2,
      ),
      child: SizedBox(
        height: 36,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: movie.genre!.length,
            itemBuilder: (context, index) {
              return genreCard(genre: movie.genre![index]);
            }),
      ),
    );
  }
}
