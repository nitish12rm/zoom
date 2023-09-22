import 'package:flutter/material.dart';
import 'package:movie/components/genreCard.dart';
import 'package:movie/presentation/constants/constants.dart';

class genres extends StatelessWidget {
  const genres({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> genreList = [
      "Action",
      "Crime",
      "Comedy",
      "Drama",
      "Horror",
      "Animation"
    ];
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      height: 36,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: genreList.length,
          itemBuilder: (context, index) {
            return genreCard(genre: genreList[index]);
          }),
    );
  }
}
