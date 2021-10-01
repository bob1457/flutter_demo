import 'package:flutter/material.dart';
import 'package:flutter_app/constants/colors.dart';
import 'package:flutter_app/mock_data/restaurant_data.dart';

class RestaurantInfo extends StatelessWidget {
  // const RestaurantInfo({Key? key}) : super(key: key);
  final restaurant = RestaurantData.restaurant();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ignore: prefer_const_constructors
          Text(
            'Restaurant',
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    restaurant.name,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.green.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          restaurant.waitTime,
                          // ignore: prefer_const_constructors
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      // ignore: prefer_const_constructors
                      Text(
                        restaurant.distance,
                        style: TextStyle(
                          color: Colors.grey.withOpacity(0.4),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        restaurant.label,
                        style: TextStyle(
                          color: Colors.grey.withOpacity(0.4),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  height: 50,
                  width: 50,
                  child: Image.asset(
                    restaurant.logoUrl,
                    fit: BoxFit.fill,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Text('"${restaurant.desc}"', )
              Text(
                restaurant.desc,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Row(
                children: [
                  // ignore: prefer_const_constructors
                  Icon(
                    Icons.star_border_outlined,
                    color: kPrimaryColor,
                  ),
                  Text(
                    restaurant.score.toString(),
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
