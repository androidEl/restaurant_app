import 'package:flutter/material.dart';
import 'package:restaurant_app/constants/themes.dart';
import 'package:restaurant_app/model/restaurant_model.dart';
class DetailRestaurant extends StatelessWidget {
  final RestaurantElement restaurantElement;
  const DetailRestaurant({required this.restaurantElement, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        title: Text(restaurantElement.name!,style: textStyle.headline5!.copyWith(
          color: kPrimaryColor
        ),),
        bottomOpacity: 0,
        elevation: 0,
        leading: IconButton(
          
          onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back_ios,color: kPrimaryColor,)),
      ),
      body: Column(
        
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(restaurantElement.pictureId!,),fit: BoxFit.cover)
            ),
          
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     SizedBox(height: 10,),
              Text(restaurantElement.name!,style: textStyle.headline5!.copyWith(fontWeight: FontWeight.bold),),
              SizedBox(height: 5,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.location_on),
                  Text(restaurantElement.city!,style: textStyle.subtitle2,)
                ],
              ),
              SizedBox(height: 10,),
              Text(restaurantElement.description!,style: textStyle.bodyText1,maxLines: 6,overflow: TextOverflow.ellipsis,textAlign: TextAlign.justify,),
              SizedBox(height: 10,),
              Text('Menu',style: textStyle.headline5!.copyWith(fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Text('Food',style: textStyle.headline6,),
              SizedBox(height: 5,),
              Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: restaurantElement.menus!.foods!.map((e) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      height: 80,
                      alignment: Alignment.bottomLeft,
                      width: 100,
                      decoration: BoxDecoration(
                        
                        color: kWhiteColor,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      
                      child: Text(e.name!),
                    ),
                  )).toList(),
                ),
              ),
              SizedBox(height: 10,),
              Text('Drinks',style: textStyle.headline6,),
              SizedBox(height: 5,),
                 Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: restaurantElement.menus!.drinks!.map((e) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      height: 80,
                      alignment: Alignment.bottomLeft,
                      width: 100,
                      decoration: BoxDecoration(
                        
                        color: kWhiteColor,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      
                      child: Text(e.name!),
                    ),
                  )).toList(),
                ),
              ),
              SizedBox(height: 10,)
                  ],
                ),
              ),
            ),
          ),
         
        ],
      ),
    );
  }
}