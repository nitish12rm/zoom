import 'package:flutter/material.dart';
import 'package:movie/data/model/movies.dart';
import 'package:movie/presentation/constants/constants.dart';

class plot extends StatelessWidget {
  final Movie movie;
  const plot({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: kDefaultPadding / 2, horizontal: kDefaultPadding),
          child: Text(
            "Plot Summary",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            movie.plot.toString(),
            style: TextStyle(color: Color(0XFF737599)),
          ),
        ),
      ],
    );
  }
}
