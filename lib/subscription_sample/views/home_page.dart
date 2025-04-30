import 'package:flutter/material.dart';
import 'package:flutter_ui_samples/subscription_sample/custom_widgets/check_box_demo.dart';

class SubscriptionHomePage extends StatelessWidget {
  const SubscriptionHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(40.0),
          child: Column(
            children: [
              Text('Try FREE for 4 weeks',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0)),
              Text('We uncover the facts around the'),
              Text('clock, all over the globe.'),
              SizedBox(height: 20.0),
              Container(
                padding: EdgeInsets.all(12),
                margin: EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                  ),
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.white,
                ),
                child: ListTile(
                  leading: CheckboxDemo(),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'MONTHLY',
                        style: TextStyle(
                          fontSize: 11.0,
                        ),
                      ),
                      Text(
                        '4 weeks for free',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  subtitle: Text('Then 3D every month for the first year'),
                ),
              ),
              Container(
                padding: EdgeInsets.all(12),
                margin: EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.white,
                ),
                child: ListTile(
                  leading: CheckboxDemo(),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.blue,
                        ),
                        padding: EdgeInsets.only(
                            left: 10.0, right: 10.0, top: 3.0, bottom: 3.0),
                        child: Text(
                          'Best Value',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13.0,
                              color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 3.0),
                      Text(
                        'YEARLY',
                        style: TextStyle(
                          fontSize: 11.0,
                        ),
                      ),
                      Text(
                        '4 weeks for free',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  subtitle: Text('Then 30D for the first year'),
                ),
              ),
              SizedBox(height: 30.0),
              SizedBox(
                width: 300.0,
                height: 50.0,
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 0, 33, 59),
                  ),
                  onPressed: () {},
                  child:
                      Text('Continue', style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(height: 20.0),
              SizedBox(
                width: 300.0,
                height: 50.0,
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  onPressed: () {},
                  child: Text('Continue with PayPal',
                      style: TextStyle(color: Colors.black)),
                ),
              ),
              SizedBox(
                height: 35.0,
              ),
              Text(
                'View more offers',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
