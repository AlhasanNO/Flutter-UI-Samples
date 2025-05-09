import 'package:flutter/material.dart';
import 'package:flutter_ui_samples/shopping_sample/package_details.dart';

class InDeleveryCard extends StatelessWidget {
  const InDeleveryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.0,
      margin: EdgeInsets.all(4.0),
      decoration: BoxDecoration(
          color: Color(0xff090909),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 2.0,
              spreadRadius: 2.0,
            ),
          ],
          borderRadius: BorderRadius.circular(30.0)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      minRadius: 25.0,
                      child: Icon(
                        Icons.inventory_2_outlined,
                        color: Color(0xfff98602),
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'ID Number',
                          style: TextStyle(color: Colors.white, fontSize: 12.0),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'JK126K532',
                          style: TextStyle(color: Colors.white, fontSize: 16.0),
                        ),
                      ],
                    ),
                    Spacer(),
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xFF373733),
                      ),
                      onPressed: () {},
                      child: Text(
                        'In Delevery',
                        style: TextStyle(color: Color(0xfff98602)),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tracking Number',
                          style: TextStyle(color: Colors.white, fontSize: 10.0),
                        ),
                        Text(
                          '34589762',
                          style: TextStyle(color: Colors.white, fontSize: 13.0),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Data Shipped',
                          style: TextStyle(color: Colors.white, fontSize: 10.0),
                        ),
                        Text(
                          '13 JUL. 2024',
                          style: TextStyle(color: Colors.white, fontSize: 13.0),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Location',
                          style: TextStyle(color: Colors.white, fontSize: 10.0),
                        ),
                        Text(
                          'Aldo',
                          style: TextStyle(color: Colors.white, fontSize: 13.0),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Spacer(),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 45.0,
                  decoration: BoxDecoration(
                    color: Color(0xFF373733),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30.0),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.send,
                        color: Color(0xfff98602),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'Track',
                        style: TextStyle(
                          color: Color(0xfff98602),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return PackageDetails();
                        },
                      ),
                    );
                  },
                  child: Container(
                    height: 45.0,
                    decoration: BoxDecoration(
                      color: Color(0xFF373733),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(30.0),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'View Details',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
