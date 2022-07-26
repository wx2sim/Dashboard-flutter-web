import 'package:flutter/material.dart';
import 'package:website/constants/style.dart';
import 'package:website/pages/overview/widgets/info_cards.dart';

class OverviewCardsMediumScreen extends StatelessWidget {
  const OverviewCardsMediumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            InfoCard(
              title: "Rides in Progress",
              value: "7",
              TopColor: Colors.orange,
              isActive: false,
              onTap: () {},
            ),
            SizedBox(
              width: _width / 64,
            ),
            InfoCard(
              title: "Packages Delivred",
              value: "17",
              TopColor: Colors.lightBlue,
              isActive: false,
              onTap: () {},
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            InfoCard(
              title: "Cancelled Delivery",
              value: "3",
              TopColor: Colors.redAccent,
              isActive: false,
              onTap: () {},
            ),
            SizedBox(
              width: _width / 64,
            ),
            InfoCard(
              title: "Scheduled deliveries",
              value: "6",
              TopColor: Colors.teal,
              isActive: false,
              onTap: () {},
            )
          ],
        )
      ],
    );
  }
}
