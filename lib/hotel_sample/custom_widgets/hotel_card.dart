import 'package:flutter/material.dart';
import 'package:flutter_ui_samples/hotel_sample/models/hotel.dart';
import 'package:flutter_ui_samples/hotel_sample/style/style.dart';
import 'package:flutter_ui_samples/hotel_sample/custom_widgets/favorite_button.dart';

class HotelCard extends StatelessWidget {
  const HotelCard({
    super.key,
    required this.hotel,
  });

  final Hotel hotel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 250,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: [
                BoxShadow(color: Colors.grey, blurRadius: 8.0),
              ]),
          child: Column(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                    image: DecorationImage(
                      image: AssetImage(hotel.image),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            hotel.name,
                            style: style1,
                          ),
                          Text(
                            hotel.price.toString(),
                            style: style1,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                hotel.location,
                                style: style2,
                              ),
                              SizedBox(
                                width: 8.0,
                              ),
                              Icon(
                                Icons.location_on,
                                size: 15,
                                color: iconColor,
                              ),
                              SizedBox(
                                width: 2.0,
                              ),
                              Text(
                                '${hotel.distance}km to city',
                                style: style2,
                              ),
                            ],
                          ),
                          Text(
                            '/per night',
                            style: style5,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 15,
                            color: iconColor,
                          ),
                          Icon(
                            Icons.star,
                            size: 15,
                            color: iconColor,
                          ),
                          Icon(
                            Icons.star,
                            size: 15,
                            color: iconColor,
                          ),
                          Icon(
                            Icons.star,
                            size: 15,
                            color: iconColor,
                          ),
                          Icon(
                            Icons.star_border_outlined,
                            size: 15,
                            color: iconColor,
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Text(
                            '${hotel.reviews} Reviews',
                            style: style2,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: 10,
          top: 10,
          child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: FavoriteButton()),
        ),
      ],
    );
  }
}
