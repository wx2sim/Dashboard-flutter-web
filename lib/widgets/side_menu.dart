import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:website/constants/controllers.dart';
import 'package:website/constants/style.dart';
import 'package:website/helpers/responsivness.dart';
import 'package:website/pages/authentication/authentication.dart';
import 'package:website/routing/routes.dart';
import 'package:website/widgets/custom_text.dart';
import 'package:website/widgets/side_menu_items.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white12,
      child: ListView(
        children: [
          if (Responsivewidget.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 12),
                      child: Image.asset("assets/icons/logo.png"),
                    ),
                    Flexible(
                      child: CustomText(
                        text: "DashBoard",
                        color: active,
                        weight: FontWeight.bold,
                        size: 15,
                      ),
                    ),
                    SizedBox(
                      width: _width / 48,
                    )
                  ],
                ),
              ],
            ),
          SizedBox(
            height: 20,
          ),
          Divider(
            color: lightgrey.withOpacity(.1),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: sideMenuItems
                .map((item) => SideMenuItem(
                      itemName: item.name,
                      onTap: () {
                        if (item.route == AuthenticationPageRoute) {
                          menuController
                              .changeActiveItemTo(OverViewPageDisplayName);
                          Get.offAllNamed(AuthenticationPageRoute);
                        }
                        if (!menuController.isActive(item.name)) {
                          menuController.changeActiveItemTo(item.name);
                          if (Responsivewidget.isSmallScreen(context))
                            Get.back();
                          navigationController.navigateTo(item.route);
                        }
                      },
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}
