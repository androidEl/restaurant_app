import 'dart:async';

import 'package:flutter/material.dart';
import 'package:restaurant_app/constants/themes.dart';
class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}



class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    
    Timer(Duration(seconds: 3), (){
      Navigator.pushNamedAndRemoveUntil(context, '/homepage', (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/images_splash.jpg'))
          ),
        )
      ),
    );
  }
}