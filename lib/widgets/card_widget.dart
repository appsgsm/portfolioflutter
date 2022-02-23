import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioflutter/widgets/icon_card.dart';
import 'package:portfolioflutter/widgets/primary_button.dart';

class CardWidget extends StatelessWidget {
  final Color iconColor;
  final Icon iconType;

  final String buttonTitle;
  final String description;
  final String title;
  final String exerciseText;
  final int exerciseQuantity;
  final String link;

  const CardWidget({
    Key? key,
    required this.iconType,
    required this.iconColor,
    required this.description,
    required this.title,
    required this.buttonTitle,
    required this.exerciseText,
    required this.exerciseQuantity,
    required this.link,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      color: const Color(0xffEDF4F8),
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: FittedBox(
          fit: BoxFit.fitHeight,
          child: Container(
            constraints: BoxConstraints(minHeight: screenSize.height * 0.4),
            width: screenSize.width * 0.94,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              IconCard(icon: iconType, iconColor: iconColor),
                              Text(
                                title,
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 16,
                                      letterSpacing: .5,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(exerciseText),
                              Text(exerciseQuantity.toString()),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: <Widget>[
                        Flexible(
                          child: Text(
                            description,
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 14,
                                  letterSpacing: .5,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Icon(FontAwesomeIcons.github),
                            Text(
                              link,
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontSize: 12,
                                    letterSpacing: .5,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            const Spacer(),
                            PrimaryButton(title: buttonTitle)
                          ],
                        ),
                      ],
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
