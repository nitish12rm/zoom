import 'package:flutter/material.dart';
import 'package:movie/components/castCard.dart';
import 'package:movie/presentation/constants/constants.dart';

class castAndCrew extends StatelessWidget {
  final List? cast;
  const castAndCrew({super.key, required this.cast});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: kDefaultPadding, horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Cast & Crew',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Container(
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: cast!.length,
              itemBuilder: (context, index) {
                return castCard(cast: cast![index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
