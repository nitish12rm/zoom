import 'package:flutter/material.dart';
import 'package:movie/presentation/constants/constants.dart';
import 'package:movie/presentation/screens/home/components/categories.dart';
import 'package:movie/presentation/screens/home/components/generes.dart';
import 'package:movie/presentation/screens/home/components/movieCarousel.dart';

class body extends StatelessWidget {
  const body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          categoryList(),
          genres(),
          SizedBox(
            height: kDefaultPadding,
          ),
          MovieCarousel(),
        ],
      ),
    );
  }
}
