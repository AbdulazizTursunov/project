import 'package:flutter/material.dart';


class CustomRichText extends StatelessWidget {
  const CustomRichText(
      {super.key, required this.title, required this.subTitle});

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return RichText(
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      text: TextSpan(
          text: title,
          style: TextStyle(
            fontWeight: FontWeight.w500,
              fontFamily: 'Quicksand',
              color: Colors.blueGrey.shade800,
              fontSize: 16.0),
          children: [
            TextSpan(
              text:
              subTitle,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, fontFamily: 'Quicksand'),),
          ]),
    );
  }
}
