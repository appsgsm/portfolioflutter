import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolioflutter/ui/theme_extensions.dart';
import 'package:portfolioflutter/widgets/custom_appbar.dart';
import '../widgets/card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color(0xffD6DFE4),
          appBar: const PreferredSize(
            preferredSize: Size.fromHeight(60.0),
            child: CustomAppBar(
              iconAppBar: FontAwesomeIcons.solidMoon,
              imageUrl: 'assets/images/logo.png',
              titleAppBar: 'Atividades',
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CardWidget(
                  iconColor: context.primaryColor,
                  iconType: Icon(
                    FontAwesomeIcons.running,
                    color: context.primaryColorLight,
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
                  iconColor: context.primaryColor,
                  iconType: Icon(
                    FontAwesomeIcons.glasses,
                    color: context.primaryColorLight,
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
                  iconColor: context.primaryColor,
                  iconType: Icon(
                    FontAwesomeIcons.fan,
                    color: context.primaryColorLight,
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
