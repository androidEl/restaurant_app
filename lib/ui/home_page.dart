import 'package:flutter/material.dart';
import 'package:restaurant_app/constants/themes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Restaurant',
              style: textStyle.headline5,
            ),
            Text(
              'Recommmendation restaurant for you',
              style: textStyle.subtitle1,
            )
          ],
        ),
      ),
    );
  }
}
