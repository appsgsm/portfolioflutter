import 'package:flutter/material.dart';
import 'package:portfolioflutter/ui/portifolio_ui_config.dart';

import 'pages/home_page.dart';

//import 'splash/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: PortifolioUiConfig.themeLight,
      darkTheme: PortifolioUiConfig.themeDark,
      title: 'Portifólio Flutter',
      home: HomePage(),
    );
  }
}
