import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';
import 'package:website/constants/style.dart';
import 'package:website/helpers/responsivness.dart';
import 'package:website/layout.dart';

import 'custom_text.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading: !Responsivewidget.isSmallScreen(context)
          ? Row(
              children: [
                Container(
                    padding: EdgeInsets.only(left: 14),
                    child: Image.asset(
                      'assets/icons/logo.png',
                      width: 28,
                    ))
              ],
            )
          : IconButton(
              onPressed: () {
                key.currentState!.openDrawer();
              },
              icon: Icon(Icons.menu),
              color: Colors.black),
      elevation: 0,
      //backgroundColor: Colors.amber,
      title: Row(
        children: [
          Visibility(
            child: CustomText(
              color: dark,
              size: 15,
              text: 'Dash',
              weight: FontWeight.bold,
            ),
          ),
          Expanded(child: Container()),
          IconButton(
            icon: Icon(
              Icons.settings,
              color: dark.withOpacity(.7),
            ),
            onPressed: () {},
          ),
          Stack(
            children: [
              IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: dark.withOpacity(.7),
                ),
                onPressed: () {},
              ),
              Positioned(
                  top: 7,
                  right: 7,
                  child: Container(
                    width: 12,
                    height: 12,
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: active,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: light, width: 2)),
                  ))
            ],
          ),
          Container(
            width: 1,
            height: 22,
            color: lightgrey,
          ),
          SizedBox(
            width: 24,
          ),
          CustomText(
            text: "Wassim Mahdjoubi",
            color: lightgrey,
            weight: FontWeight.normal,
            size: 16,
          ),
          SizedBox(
            width: 16,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            child: Container(
              padding: EdgeInsets.all(2),
              margin: EdgeInsets.all(2),
              child: CircleAvatar(
                  backgroundColor: light,
                  child: Image.asset(
                    'assets/icons/me.jpg',
                    width: 28,
                  )),
            ),
          )
        ],
      ),
      iconTheme: IconThemeData(color: dark),
      backgroundColor: Colors.white.withOpacity(.9),
    );
