import 'package:flutter/material.dart';
import 'package:website/helpers/responsivness.dart';
import 'package:website/widgets/large_screen.dart';
import 'package:website/widgets/side_menu.dart';
import 'package:website/widgets/small_screen.dart';
import 'package:website/widgets/top_nav.dart';
import 'widgets/medium_screen.dart';

class SiteLayout extends StatelessWidget {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        drawerEnableOpenDragGesture: false,
        key: scaffoldKey,
        appBar: topNavigationBar(context, scaffoldKey),
        drawer: Drawer(
          child: SideMenu(),
        ),
        body: Responsivewidget(
          largeScreen: LargeScreen(),
          smallScreen: SmallScreen(),
          mediumScreen: mediumScreen(),
        ));
  }
}
