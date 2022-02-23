import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/card_widget.dart';
import '../widgets/theme_navigation.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color(0xffD6DFE4),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                ThemeNavigation(
                  pageTitle: 'Atividades',
                ),
                CardWidget(
                  iconColor: Color(0xff055AA3),
                  iconType: Icon(
                    FontAwesomeIcons.running,
                    color: Color(0xffD6DFE4),
                    size: 25,
                  ),
                  buttonTitle: 'Ver mais',
                  description:
                      'Estudos sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos',
                  exerciseQuantity: 4,
                  exerciseText: 'Exercícios:',
                  title: 'Animações',
                  link: 'Acesse o código fonte',
                ),
                CardWidget(
                  iconColor: Color(0xff055AA3),
                  iconType: Icon(
                    FontAwesomeIcons.glasses,
                    color: Color(0xffD6DFE4),
                    size: 25,
                  ),
                  buttonTitle: 'Ver mais',
                  description:
                      'Estudos sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos',
                  exerciseQuantity: 4,
                  exerciseText: 'Exercícios:',
                  title: 'Leitura de Mockup',
                  link: 'Acesse o código fonte',
                ),
                CardWidget(
                  iconColor: Color(0xff055AA3),
                  iconType: Icon(
                    FontAwesomeIcons.fan,
                    color: Color(0xffD6DFE4),
                    size: 25,
                  ),
                  buttonTitle: 'Ver mais',
                  description:
                      'Estudos sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos',
                  exerciseQuantity: 4,
                  exerciseText: 'Exercícios:',
                  title: 'Animações',
                  link: 'Acesse o código fonte',
                ),
              ],
            ),
          )),
    );
  }
}
