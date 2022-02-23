import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ThemeNavigation extends StatelessWidget {
  const ThemeNavigation({
    Key? key,
    required this.pageTitle,
  }) : super(key: key);

  final String pageTitle;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 40.0, right: 40.0, top: 5.0),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Container(
          width: screenSize.width,
          height: screenSize.height * 0.25,
          constraints: BoxConstraints(minHeight: screenSize.height * 0.25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('images/logo.png'),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            pageTitle,
                          ),
                          const Text(
                            'Flutterando Masterclass',
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Icon(
                    FontAwesomeIcons.solidMoon,
                    color: Colors.black,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
