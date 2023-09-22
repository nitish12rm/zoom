import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie/presentation/constants/constants.dart';
import 'package:movie/presentation/screens/home/components/body.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            padding: EdgeInsets.only(left: kDefaultPadding),
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/menu.svg")),
        actions: [
          IconButton(
              padding: EdgeInsets.only(right: kDefaultPadding),
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/search.svg'))
        ],
      ),
      body: body(),
    );
  }
}
