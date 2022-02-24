import 'package:flutter/material.dart';
import 'package:portfolioflutter/ui/theme_extensions.dart';

class CustomAppBar extends StatelessWidget {
  final String titleAppBar;
  final String imageUrl;
  final IconData iconAppBar;

  const CustomAppBar({
    Key? key,
    required this.titleAppBar,
    required this.imageUrl,
    required this.iconAppBar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: context.primaryColorLight,
      title: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            titleAppBar,
          ),
          const Text('Flutterando Masterclass'),
        ],
      ),
      leading: Image.asset(
        imageUrl,
        width: 50,
        height: 50,
      ),
      actions: [
        IconButton(icon: Icon(iconAppBar), onPressed: () {}),
      ],
    );
  }
}
