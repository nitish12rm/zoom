import 'package:flutter/material.dart';
import 'package:movie/presentation/constants/constants.dart';

class castCard extends StatelessWidget {
  final Map cast;
  const castCard({super.key, required this.cast});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: kDefaultPadding),
      width: 80,
      child: Column(
        children: [
          Container(
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(cast['image']),
              ),
            ),
          ),
          SizedBox(
            height: kDefaultPadding / 2,
          ),
          Text(
            cast['orginalName'],
            textAlign: TextAlign.center,
            maxLines: 2,
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: Colors.black),
          ),
          SizedBox(
            height: kDefaultPadding / 4,
          ),
          Text(
            cast['movieName'],
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodySmall,
          )
        ],
      ),
    );
  }
}
