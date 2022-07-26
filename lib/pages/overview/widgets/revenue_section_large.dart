import 'package:flutter/material.dart';
import 'package:website/constants/style.dart';
import 'package:website/pages/overview/widgets/bar_chart.dart';
import 'package:website/pages/overview/widgets/revenue_info.dart';
import 'package:website/widgets/custom_text.dart';

class RevenueSectionLarge extends StatelessWidget {
  const RevenueSectionLarge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      margin: EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 6),
                color: lightgrey.withOpacity(.1),
                blurRadius: 12),
          ],
          border: Border.all(color: lightgrey, width: .5)),
      child: Row(
        children: [
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomText(
                  text: "Revenue Chart",
                  size: 20,
                  color: lightgrey,
                  weight: FontWeight.bold),
              Container(
                  width: 600,
                  height: 300,
                  child: SimpleBarChart.withSampleData())
            ],
          )),
          Container(
            width: 1,
            height: 120,
            color: lightgrey,
          ),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  RevenueInfo(title: "Today\'s revenue", amount: "23"),
                  RevenueInfo(title: "Last 7 Days", amount: "150")
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  RevenueInfo(title: "Last 30", amount: "1,200"),
                  RevenueInfo(title: "Last 12 Months", amount: "3,240")
                ],
              ),
            ],
          ))
        ],
      ),
    );
  }
}
