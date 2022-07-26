import 'package:flutter/widgets.dart';
import 'package:website/constants/controllers.dart';
import 'package:website/routing/router.dart';
import 'package:website/routing/routes.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigationKey,
      initialRoute: OverViewPageRoute,
      onGenerateRoute: generateRoute,
    );
