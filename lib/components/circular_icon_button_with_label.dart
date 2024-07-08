import 'package:flutter/material.dart';

class CircularIconButtonWithLabel extends StatelessWidget {
  final Function onButtonPressed;
  final IconData icon;
  final String iconLabel;

  const CircularIconButtonWithLabel(
      {super.key,
      required this.onButtonPressed,
      required this.icon,
      required this.iconLabel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton.filled(
          onPressed: () => onButtonPressed(),
          icon: Icon(icon),
          iconSize: 35,
          color: Colors.deepPurple.shade400,
          padding: const EdgeInsets.all(15),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.grey.shade300),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          iconLabel,
          style: const TextStyle(
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
