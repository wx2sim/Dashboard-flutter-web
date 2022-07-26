import 'package:flutter/material.dart';
import 'package:website/constants/style.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final String value;
  final Color TopColor;
  final bool isActive;
  final Function()? onTap;
  const InfoCard(
      {Key? key,
      required this.title,
      required this.value,
      required this.TopColor,
      required this.isActive,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: InkWell(
      onTap: onTap,
      child: Container(
        height: 136,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 6),
                color: lightgrey.withOpacity(.1),
                blurRadius: 12,
              )
            ],
            borderRadius: BorderRadius.circular(8)),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: Container(
                  color: TopColor ?? active,
                  height: 5,
                ))
              ],
            ),
            Expanded(child: Container()),
            RichText(
                textAlign: TextAlign.center,
                text: TextSpan(children: [
                  TextSpan(
                      text: "$title\n",
                      style: TextStyle(
                          fontSize: 16, color: isActive ? active : lightgrey)),
                  TextSpan(
                      text: "$value",
                      style: TextStyle(
                          fontSize: 40, color: isActive ? active : dark)),
                ])),
            Expanded(child: Container()),
          ],
        ),
      ),
    ));
  }
}
