import 'package:flutter/material.dart';

class PackageDetailsCard extends StatelessWidget {
  const PackageDetailsCard({super.key});

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
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Color(0xFFf6f6f6),
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
                      style: TextStyle(fontSize: 12.0),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'JK126K532',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ],
                ),
                Spacer(),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xFFf6f6f6),
                  ),
                  onPressed: () {},
                  child: Text(
                    'In Delevery',
                    style: TextStyle(
                      color: Color(0xfff98602),
                    ),
                  ),
                ),
              ],
            ),
            Divider(),
            Text(
              'Details Package',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Customer Name',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('34589762'),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'From',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('13 JUL. 2024'),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Status',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('Transit'),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'To',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('13 JUL. 2024'),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
