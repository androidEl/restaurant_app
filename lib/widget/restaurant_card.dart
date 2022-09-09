import 'package:flutter/material.dart';
import 'package:restaurant_app/constants/themes.dart';
import 'package:restaurant_app/model/restaurant_model.dart';

class RestaurantCard extends StatelessWidget {
   final RestaurantElement? restaurantElement;
  const RestaurantCard( {Key? key, required this.restaurantElement}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, '/detail-restaurant',arguments: restaurantElement);
      },
      child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                  height: 130,
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        maxRadius: 40,
                        backgroundImage: NetworkImage(restaurantElement!.pictureId!),
                      
                      ),
                    
                      SizedBox(width: 10,),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(restaurantElement!.name!,style: textStyle.headline6,overflow: TextOverflow.ellipsis,),
                            SizedBox(height: 5,),
                            Text(restaurantElement!.city!,style: textStyle.subtitle2,overflow: TextOverflow.ellipsis,),
                            SizedBox(height: 5,),
                         Row(
                        children: [
                          Icon(Icons.star,size: 20,color: kGreyColor,),
                          Text(restaurantElement!.rating!.toString(),style: textStyle.subtitle2,)
                        ],
                      ),],
                        ),
                      ),
                      
                    ],
                  ),
                ),
              ),
    );
  }
}