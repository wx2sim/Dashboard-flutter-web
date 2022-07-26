import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:web_ffi/web_ffi.dart';
import 'package:website/helpers/responsivness.dart';
import 'package:website/widgets/horizontal_menu_item.dart';
import 'package:website/widgets/icons_side_menu.dart';
import 'package:website/widgets/vertical_menu_item.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  final void Function()? onTap;
  const SideMenuItem({Key? key, required this.itemName, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Responsivewidget.isLargeScreen(context)) {
      return VerticalMenuItem(itemName: itemName, onTap: onTap);
    } else if (Responsivewidget.isSmallScreen(context)) {
      return HorizontalMenuItem(onTap: onTap, itemName: itemName);
    } else {
      return iconsMenuItem(onTap: onTap, itemName: itemName);
    }
  }
}
