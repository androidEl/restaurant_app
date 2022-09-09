import 'package:flutter/material.dart';
import 'package:restaurant_app/constants/themes.dart';
import 'package:restaurant_app/model/restaurant_model.dart';
import 'package:restaurant_app/widget/restaurant_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(vertical: 50, horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Restaurant',
              style: textStyle.headline4,
            ),
            Text(
              'Recommmendation restaurant for you',
              style: textStyle.subtitle1,
            ),
            const SizedBox(height: 20,),
            FutureBuilder<String>(
              future: DefaultAssetBundle.of(context).loadString('assets/local_restaurant.json'),
              builder: (context,snapshot){
            
                if(snapshot.hasData){
                  final Restaurant restaurant = restaurantFromJson(snapshot.data!);
                return Expanded(
                  child: SizedBox(
                    height: 700,
                    child: ListView.builder(
                      itemCount: restaurant.restaurants!.length,
                      itemBuilder: (context,index){
                        return RestaurantCard(restaurantElement: restaurant.restaurants![index]);
                      }),
                  ),
                );
                }
                return Center(child: CircularProgressIndicator());
              })
          ],
        ),
      ),
    );
  }
}
