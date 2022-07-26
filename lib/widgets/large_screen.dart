import 'package:flutter/material.dart';
import 'package:website/helpers/local_navigator.dart';
import 'package:website/widgets/side_menu.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: SideMenu()),
        Expanded(flex: 5, child: localNavigator())
      ],
    );
  }
}
