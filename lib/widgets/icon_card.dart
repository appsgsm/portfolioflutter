import 'package:flutter/material.dart';

class IconCard extends StatelessWidget {
  const IconCard({
    Key? key,
    required this.icon,
    required this.iconColor,
  }) : super(key: key);

  final Icon icon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: icon,
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(20),
        primary: iconColor,
      ),
    );
  }
}
