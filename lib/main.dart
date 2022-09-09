import 'package:flutter/material.dart';
import 'package:restaurant_app/constants/themes.dart';
import 'package:restaurant_app/model/restaurant_model.dart';
import 'package:restaurant_app/ui/detail_restaurant.dart';
import 'package:restaurant_app/ui/home_page.dart';
import 'package:restaurant_app/ui/spash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        textTheme: textStyle,
        appBarTheme: AppBarTheme(
          backgroundColor: kSecondaryColor
        )
      ),
      home: HomePage(),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashPage(),
        '/homepage' : (context) => const HomePage(),
        '/detail-restaurant': (context) => DetailRestaurant(restaurantElement: ModalRoute.of(context)!.settings.arguments as RestaurantElement,)
      },
    );
  }
}
