import 'package:flutter/material.dart';
import 'package:website/constants/style.dart';
import 'package:website/pages/overview/widgets/info_cards.dart';

class OverviewCardsLargeScreen extends StatelessWidget {
  const OverviewCardsLargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Row(
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
        SizedBox(
          width: _width / 64,
        ),
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
        ),
        SizedBox(
          width: _width / 64,
        ),
      ],
    );
  }
}
