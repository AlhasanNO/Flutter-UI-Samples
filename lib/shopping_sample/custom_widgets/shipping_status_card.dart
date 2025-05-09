import 'package:flutter/material.dart';

class ShippingStatusCard extends StatelessWidget {
  const ShippingStatusCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4.0),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 2.0,
              spreadRadius: 2.0,
            ),
          ],
          borderRadius: BorderRadius.circular(30.0)),
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Shpping Status',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Stepper(
              controlsBuilder: (context, details) {
                return Container();
              },
              steps: [
                Step(
                    title: Text('Moving from'),
                    subtitle: Text('June 10, 2018 03:45pm'),
                    content: Text(''),
                    state: StepState.complete),
                Step(
                  title: Text('In transit'),
                  subtitle: Text('Jackline Tower, New York'),
                  content: Text(''),
                ),
                Step(
                  title: Text('Out of delevery'),
                  subtitle: Text('Traking number'),
                  content: Text(''),
                ),
                Step(
                  title: Text('Delevery'),
                  subtitle: Text('Not delevered yet'),
                  content: Text(''),
                ),
              ],
            ),
            SizedBox(
              width: double.infinity,
              height: 60.0,
              child: ElevatedButton(
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xfff98602),
                  elevation: 0.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Live Traking',
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            SizedBox(
              width: double.infinity,
              height: 60.0,
              child: ElevatedButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  elevation: 0.0,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Color(0xfff98602),
                    ),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Delevery',
                  style: TextStyle(color: Color(0xfff98602), fontSize: 18.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
