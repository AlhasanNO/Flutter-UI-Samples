import 'package:flutter/material.dart';
import 'package:flutter_ui_samples/Hotel%20Sample/Models/hotel.dart';
import 'package:flutter_ui_samples/Hotel%20Sample/Style/style.dart';
import 'package:flutter_ui_samples/Hotel%20Sample/Custom%20Widgets/hotel_card.dart';

class HotelHomePage extends StatelessWidget {
  const HotelHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          'Explore',
          style: style1,
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_outline),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.location_on),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide.none),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: iconColor,
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    dimensionH15,
                    Text(
                      'Choose date',
                      style: style2,
                    ),
                    Text(
                      '12 Dec - 22 Dec',
                      style: style3,
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    dimensionH15,
                    Text(
                      'Number of Rooms',
                      style: style2,
                    ),
                    Text(
                      '1 Room - 2 Adults',
                      style: style3,
                    )
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(12.0),
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '530 hotels found',
                        style: style3,
                      ),
                      Row(
                        children: [
                          Text(
                            'Filters',
                            style: style4,
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Icon(
                            Icons.sort,
                            color: iconColor,
                          )
                        ],
                      ),
                    ],
                  ),
                  dimensionH15,
                  Flexible(
                    child: ListView(
                      children: [
                        HotelCard(
                          hotel: Hotel(
                            image: 'assets/hotel/hotel_1.png',
                            name: 'Grand Royal Hotel',
                            location: 'wembley, London',
                            distance: 2,
                            reviews: 80,
                            price: 180,
                          ),
                        ),
                        dimensionH15,
                        HotelCard(
                          hotel: Hotel(
                            image: 'assets/hotel/hotel_2.png',
                            name: 'Queen hotel',
                            location: 'wembley, London',
                            distance: 2,
                            reviews: 80,
                            price: 220,
                          ),
                        ),
                        dimensionH15,
                        HotelCard(
                          hotel: Hotel(
                            image: 'assets/hotel/hotel_3.png',
                            name: 'Grand Royal Hotel',
                            location: 'wembley, London',
                            distance: 2,
                            reviews: 80,
                            price: 180,
                          ),
                        ),
                        dimensionH15,
                        HotelCard(
                          hotel: Hotel(
                            image: 'assets/hotel/hotel_4.png',
                            name: 'Queen hotel',
                            location: 'wembley, London',
                            distance: 2,
                            reviews: 80,
                            price: 220,
                          ),
                        ),
                        dimensionH15,
                        HotelCard(
                          hotel: Hotel(
                            image: 'assets/hotel/hotel_5.png',
                            name: 'Grand Royal Hotel',
                            location: 'wembley, London',
                            distance: 2,
                            reviews: 80,
                            price: 180,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
