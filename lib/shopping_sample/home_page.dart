import 'package:flutter/material.dart';
import 'package:flutter_ui_samples/shopping_sample/custom_widgets/complete_delevery_card.dart';
import 'package:flutter_ui_samples/shopping_sample/custom_widgets/in_delevry_card.dart';
import 'package:flutter_ui_samples/shopping_sample/custom_widgets/status_button.dart';

class ShoppingHomePage extends StatelessWidget {
  const ShoppingHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff7f7f7),
      appBar: AppBar(
        backgroundColor: Color(0xfff7f7f7),
        title: Text(
          'Shopping Record',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              height: 45.0,
              margin: EdgeInsets.all(4.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    StatusButton(content: 'All'),
                    SizedBox(
                      width: 10.0,
                    ),
                    StatusButton(content: 'Complete'),
                    SizedBox(
                      width: 10.0,
                    ),
                    StatusButton(content: 'In Delevery'),
                    SizedBox(
                      width: 10.0,
                    ),
                    StatusButton(content: 'All'),
                    SizedBox(
                      width: 10.0,
                    ),
                    StatusButton(content: 'Complete'),
                    SizedBox(
                      width: 10.0,
                    ),
                    StatusButton(content: 'In Delevery'),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            Flexible(
              child: ListView(
                children: [
                  InDeleveryCard(),
                  SizedBox(
                    height: 8.0,
                  ),
                  CompleteDeleveryCard(),
                  SizedBox(
                    height: 8.0,
                  ),
                  CompleteDeleveryCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
