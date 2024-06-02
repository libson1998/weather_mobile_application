import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_application/theme/theme.dart';

class ExpansionCard extends StatelessWidget {
  final String strTitle;
  final String strData;

  const ExpansionCard(
      {super.key, required this.strTitle, required this.strData});

  @override
  Widget build(BuildContext context) {  //todo this code is used to reuse daily weather report
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Row(
            children: [
              Text(
                strTitle,
                style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: blackColor.withOpacity(0.7)),
              ),
              const Spacer(),
              Text(
                strData,
                style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: blackColor.withOpacity(0.7)),
              ),
            ],
          ),
        ),
        Divider(color: blackColor.withOpacity(0.2), thickness: 0.5, height: 0)
      ],
    );
  }
}
