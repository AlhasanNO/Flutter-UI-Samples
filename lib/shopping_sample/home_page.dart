import 'package:flutter/material.dart';
import 'package:flutter_ui_samples/shopping_sample/custom_widgets/complete_delevery_card.dart';
import 'package:flutter_ui_samples/shopping_sample/custom_widgets/in_delevry_card.dart';
import 'package:flutter_ui_samples/shopping_sample/custom_widgets/list_view_item.dart';

class ShoppingHomePage extends StatelessWidget {
  const ShoppingHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
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
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ListViewItem(content: 'All'),
                  SizedBox(
                    width: 10.0,
                  ),
                  ListViewItem(content: 'Complete'),
                  SizedBox(
                    width: 10.0,
                  ),
                  ListViewItem(content: 'In Delevery'),
                  SizedBox(
                    width: 10.0,
                  ),
                  ListViewItem(content: 'All'),
                  SizedBox(
                    width: 10.0,
                  ),
                  ListViewItem(content: 'Complete'),
                  SizedBox(
                    width: 10.0,
                  ),
                  ListViewItem(content: 'In Delevery'),
                ],
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
