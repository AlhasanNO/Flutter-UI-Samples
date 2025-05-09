import 'package:flutter/material.dart';

enum Choices { choice1, choice2 }

class ListItem extends StatelessWidget {
  const ListItem({
    super.key,
    required this.radioChoice,
    required this.isBestValue,
    required this.duration,
    required this.freeTrial,
    required this.price,
    required this.groupValue,
    required this.onChanged,
  });

  final Choices radioChoice;
  final bool isBestValue;
  final String duration;
  final String freeTrial;
  final String price;
  final Choices groupValue;
  final Function(Choices?) onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 4.0, right: 4.0, top: 12.0, bottom: 12.0),
      margin: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        border: Border.all(
          color: radioChoice == groupValue ? Colors.blue : Colors.grey,
        ),
        borderRadius: BorderRadius.circular(5.0),
        color: Colors.white,
      ),
      child: ListTile(
        leading: Radio<Choices>(
          value: radioChoice,
          groupValue: groupValue,
          onChanged: onChanged,
          activeColor: Colors.black,
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (isBestValue)
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
              duration,
              style: TextStyle(
                fontSize: 12.0,
              ),
            ),
            Text(
              freeTrial,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        subtitle: Text(
          price,
          style: TextStyle(fontSize: 11.0),
        ),
      ),
    );
  }
}
