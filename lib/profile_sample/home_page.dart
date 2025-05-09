import 'package:flutter/material.dart';
import 'package:flutter_ui_samples/profile_sample/list_view_item.dart';

class ProfileHomePage extends StatelessWidget {
  const ProfileHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 5.0,
                  spreadRadius: 5.0,
                )
              ],
              borderRadius: BorderRadius.circular(20.0),
            ),
            width: 315.0,
            height: 420.0,
            child: Stack(
              children: [
                Column(
                  children: [
                    Container(
                      height: 120,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 40.0,
                          ),
                          Text(
                            'Jane Doe',
                            style: TextStyle(
                                fontSize: 19.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            'Senior Flutter Dev',
                            style: TextStyle(
                                fontSize: 13.0, color: Colors.black45),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                            height: 45.0,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                ListViewItem(skill: 'Flutter'),
                                SizedBox(
                                  width: 10.0,
                                ),
                                ListViewItem(skill: 'Dart'),
                                SizedBox(
                                  width: 10.0,
                                ),
                                ListViewItem(skill: 'Firebase'),
                                SizedBox(
                                  width: 10.0,
                                ),
                                ListViewItem(skill: 'REST'),
                                SizedBox(
                                  width: 10.0,
                                ),
                                ListViewItem(skill: 'GraphQL'),
                                SizedBox(
                                  width: 10.0,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ElevatedButton(
                                  onPressed: () {}, child: Text('Message')),
                              ElevatedButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  elevation: 0.0,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      color: Colors.black45,
                                    ),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                ),
                                onPressed: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Follow'),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: 75.0,
                  left: 100.0,
                  right: 100.0,
                  child: Container(
                    width: 90.0,
                    height: 90.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/image1.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
