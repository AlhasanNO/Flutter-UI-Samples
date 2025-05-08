import 'package:flutter/material.dart';
import 'package:flutter_ui_samples/filter_sample/style/styles.dart';

class CheckBoxDemo extends StatefulWidget {
  const CheckBoxDemo({super.key});

  @override
  State<CheckBoxDemo> createState() => _CheckBoxDemoState();
}

class _CheckBoxDemoState extends State<CheckBoxDemo> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'INCLUDE',
          style: style2,
        ),
        SizedBox(height: 5.0),
        Row(
          children: [
            Checkbox(
              activeColor: Color(0xFFbab8d0),
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value;
                });
              },
            ),
            SizedBox(width: 5.0),
            Text(
              'Jobs shared with me',
              style: style2,
            ),
          ],
        ),
      ],
    );
  }
}
