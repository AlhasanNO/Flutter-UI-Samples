import 'package:flutter/material.dart';

class StatusButton extends StatefulWidget {
  const StatusButton({super.key, required this.content});
  final String content;

  @override
  State<StatusButton> createState() => _StatusButtonState();
}

class _StatusButtonState extends State<StatusButton> {
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
