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
                SizedBox(
                  height: 60,
                ),
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
            child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: active.withOpacity(.4), width: .5),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 6),
                  color: lightgrey.withOpacity(.1),
                  blurRadius: 12)
            ],
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.all(16),
          margin: EdgeInsets.only(bottom: 30, right: 10),
          child: ListView(
            padding: EdgeInsets.only(right: 10, left: 10),
            children: [
              DriversTableee(),
              SizedBox(
                height: 60,
              )
            ],
          ),
        ))
      ],
    );
  }
}
