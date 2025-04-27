import 'package:flutter/material.dart';
import 'package:flutter_ui_samples/hotel_sample/style/style.dart';

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({super.key});

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
      icon: isFavorite ? Icon(Icons.favorite) : Icon(Icons.favorite_outline),
      color: iconColor,
    );
  }
}
