import 'package:flutter/material.dart';
import 'package:movie/data/model/movies.dart';
import 'package:movie/presentation/screens/details/components/body.dart';

class detailsScreen extends StatelessWidget {
  final Movie movie;
  const detailsScreen({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(
        movie: movie,
      ),
    );
  }
}
