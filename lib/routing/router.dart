import 'dart:js';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:website/pages/authentication/authentication.dart';
import 'package:website/pages/clients/clients.dart';
import 'package:website/pages/drivers/drivers.dart';
import 'package:website/routing/routes.dart';

import '../pages/overview/overview.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case OverViewPageRoute:
      return _getPageRoute(OverViewPage());
    case ClientsPageRoute:
      return _getPageRoute(ClientsPage());
    case DriversPageRoute:
      return _getPageRoute(DriversPage());

    default:
      return _getPageRoute(OverViewPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
