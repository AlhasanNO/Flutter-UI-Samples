import 'package:flutter/material.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({super.key, required this.skill});

  final String skill;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 240, 244),
          border: Border.all(
            color: Colors.black45,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(5.0)),
      padding: EdgeInsets.all(4.0),
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: Text(skill),
      ),
    );
  }
}
