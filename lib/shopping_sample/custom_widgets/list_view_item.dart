import 'package:flutter/material.dart';

class ListViewItem extends StatefulWidget {
  const ListViewItem({super.key, required this.content});
  final String content;

  @override
  State<ListViewItem> createState() => _ListViewItemState();
}

class _ListViewItemState extends State<ListViewItem> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          side: BorderSide(color: Colors.black12)),
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 12.0),
        child: Center(
            child: Text(
          widget.content,
          style: TextStyle(
            color: Colors.black87,
          ),
        )),
      ),
    );
  }
}
