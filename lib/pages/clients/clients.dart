import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:website/constants/controllers.dart';
import 'package:website/pages/clients/widgets/clients_table.dart';

import '../../constants/style.dart';
import '../../helpers/responsivness.dart';
import '../../widgets/custom_text.dart';

class ClientsPage extends StatelessWidget {
  const ClientsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: ListView(
          children: [
            ClientsTable(),
          ],
        ))
      ],
    );
  }
}
