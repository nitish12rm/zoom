import 'package:flutter/material.dart';
import 'package:movie/components/movieCard.dart';
import 'package:movie/data/model/movies.dart';
import 'package:movie/presentation/constants/constants.dart';
import 'dart:math' as math;

class MovieCarousel extends StatefulWidget {
  const MovieCarousel({super.key});

  @override
  State<MovieCarousel> createState() => _MovieCarouselState();
}

class _MovieCarouselState extends State<MovieCarousel> {
  late PageController _pageController;
  int initialPage = 1;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(
      //so that we can have smaller portion shown on left and right
      viewportFraction: 0.8,
      //by default our movie poster
      initialPage: initialPage,
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: kDefaultPadding, horizontal: kDefaultPadding),
      child: AspectRatio(
        aspectRatio: 0.75,
        child: PageView.builder(
            onPageChanged: (value) {
              setState(() {
                initialPage = value;
              });
            },
            physics: ClampingScrollPhysics(),
            controller: _pageController,
            itemCount: movies.length,
            itemBuilder: (context, index) => buildMovieSlider(index)),
      ),
    );
  }

  Widget buildMovieSlider(int index) => AnimatedBuilder(
        builder: (context, child) {
          double value = 0;
          if (_pageController.position.haveDimensions) {
            value = index - _pageController.page!.toDouble();
            //we are using 0.038 as 180*0.038 gives us 7
            //which is exactly we need to rotate the poster
            //by 7degrees
            value = (value * 0.038).clamp(-1, 1);
            //we use clamp so that our value can vary from -1 to 1
          }
          return AnimatedOpacity(
            duration: Duration(microseconds: 350),
            opacity: initialPage == index ? 1 : 0.4,
            child: Transform.rotate(
                angle: math.pi * value, child: MovieCard(movie: movies[index])),
          );
        },
        animation: _pageController,
      );
}
