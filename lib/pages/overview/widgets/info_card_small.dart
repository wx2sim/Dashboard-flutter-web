import 'package:flutter/material.dart';
import 'package:website/constants/style.dart';
import 'package:website/widgets/custom_text.dart';

class InfoCardSmall extends StatelessWidget {
  final String title;
  final String value;

  final bool isActive;
  final Function()? onTap;
  const InfoCardSmall(
      {Key? key,
      required this.title,
      required this.value,
      required this.isActive,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: isActive ? active : lightgrey, width: .5),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              text: title,
              size: 24,
              color: isActive ? active : lightgrey,
              weight: FontWeight.w300,
            ),
            CustomText(
                text: value,
                size: 24,
                color: isActive ? active : lightgrey,
                weight: FontWeight.bold),
          ],
        ),
      ),
    ));
  }
}
