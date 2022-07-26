import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:website/pages/drivers/widgets/drivers_table.dart';

import '../../constants/controllers.dart';
import '../../constants/style.dart';
import '../../helpers/responsivness.dart';
import '../../widgets/custom_text.dart';

class DriversPage extends StatelessWidget {
  const DriversPage({Key? key}) : super(key: key);
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
                    size: 24,
                    weight: FontWeight.bold,
                    color: Colors.transparent,
                  ),
                ),
              ],
            )),
        Expanded(
            child: ListView(
          children: [
            DriversTableee(),
          ],
        ))
      ],
    );
  }
}
