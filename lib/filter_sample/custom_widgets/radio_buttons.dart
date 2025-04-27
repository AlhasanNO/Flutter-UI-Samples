import 'package:flutter/material.dart';
import 'package:flutter_ui_samples/filter_sample/style/styles.dart';

enum Choices { choice1, choice2, choice3 }

class RadioExample extends StatefulWidget {
  const RadioExample({super.key});

  @override
  State<RadioExample> createState() => _RadioExampleState();
}

class _RadioExampleState extends State<RadioExample> {
  Choices? _choice = Choices.choice1;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'VIEW',
          style: style2,
        ),
        SizedBox(height: 5.0),
        Row(
          children: [
            Transform.scale(
              scale: 1.2,
              child: Radio<Choices>(
                activeColor: Color(0xFFbab8d0),
                value: Choices.choice1,
                groupValue: _choice,
                onChanged: (Choices? value) {
                  setState(() {
                    _choice = value;
                  });
                },
              ),
            ),
            SizedBox(width: 15),
            Text(
              'All job posts',
              style: style2,
            ),
          ],
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Transform.scale(
              scale: 1.2,
              child: Radio<Choices>(
                activeColor: Color(0xFFbab8d0),
                value: Choices.choice2,
                groupValue: _choice,
                onChanged: (Choices? value) {
                  setState(() {
                    _choice = value;
                  });
                },
              ),
            ),
            SizedBox(width: 15),
            Text(
              'Active job posts',
              style: style2,
            ),
          ],
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Transform.scale(
              scale: 1.2,
              child: Radio<Choices>(
                activeColor: Color(0xFFbab8d0),
                value: Choices.choice3,
                groupValue: _choice,
                onChanged: (Choices? value) {
                  setState(() {
                    _choice = value;
                  });
                },
              ),
            ),
            SizedBox(width: 15),
            Text(
              'Acheved job posts',
              style: style2,
            ),
          ],
        ),
      ],
    );
  }
}
