import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:website/constants/controllers.dart';
import 'package:website/helpers/responsivness.dart';
import 'package:website/pages/overview/widgets/datatables.dart';
import 'package:website/pages/overview/widgets/overview_card_large.dart';
import 'package:website/pages/overview/widgets/overview_card_medium.dart';
import 'package:website/pages/overview/widgets/overview_card_small.dart';
import 'package:website/pages/overview/widgets/revenue_section_Small.dart';
import 'package:website/pages/overview/widgets/revenue_section_large.dart';
import 'package:website/pages/overview/widgets/revenue_section_medium.dart';
import 'package:website/widgets/custom_text.dart';

class OverViewPage extends StatelessWidget {
  const OverViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() => Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: Responsivewidget.isSmallScreen(context) ? 56 : 6),
                  child: CustomText(
                    text: menuController.activeItem.value,
                    size: 5,
                    weight: FontWeight.bold,
                    color: Colors.transparent,
                  ),
                )
              ],
            )),
        Expanded(
            child: ListView(
          children: [
            if (Responsivewidget.isSmallScreen(context))
              OverviewCardsSmallScreen()
            else if (Responsivewidget.isMediumScreen(context))
              OverviewCardsMediumScreen()
            else
              OverviewCardsLargeScreen(),
            if (Responsivewidget.isSmallScreen(context))
              RevenueSectionSmall()
            else if (Responsivewidget.isMediumScreen(context))
              RevenueSectionMedium()
            else
              RevenueSectionLarge(),
            DataTablee(),
            SizedBox(
              height: 60,
            )
          ],
        ))
      ],
    );
  }
}
