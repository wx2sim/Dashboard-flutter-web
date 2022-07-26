import 'package:flutter/material.dart';
import 'package:website/helpers/local_navigator.dart';
import 'package:website/widgets/side_menu.dart';

class mediumScreen extends StatelessWidget {
  const mediumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(flex: 1, child: SideMenu()),
        Expanded(flex: 9, child: localNavigator())
      ],
    );
  }
}
