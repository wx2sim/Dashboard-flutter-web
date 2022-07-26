import 'package:flutter/material.dart';
import 'package:website/constants/style.dart';
import 'package:data_tables/data_tables.dart';
import '../../../widgets/custom_text.dart';

class DataTablee extends StatelessWidget {
  const DataTablee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
        margin: EdgeInsets.only(bottom: 30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                CustomText(
                  text: "Available Drivers",
                  color: lightgrey,
                  weight: FontWeight.bold,
                  size: 20,
                ),
              ],
            ),
            DataTable(
              columnSpacing: 50,
              horizontalMargin: 50,
              columns: [
                DataColumn(
                  label: Text("Name"),
                ),
                DataColumn(
                  label: Text('Location'),
                ),
                DataColumn(
                  label: Text('Rating'),
                ),
                DataColumn(
                  label: Text('Action'),
                ),
              ],
              rows: List<DataRow>.generate(
                5,
                (index) => DataRow(
                  cells: [
                    DataCell(CustomText(
                      text: "Houssem Mihoubi",
                      color: Colors.black.withOpacity(.7),
                      weight: FontWeight.bold,
                      size: 18,
                    )),
                    DataCell(CustomText(
                      text: "Berrouaghia city",
                      color: active.withOpacity(.7),
                      weight: FontWeight.bold,
                      size: 18,
                    )),
                    DataCell(Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.deepOrange,
                          size: 18,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        CustomText(
                          text: "4",
                          color: active.withOpacity(.7),
                          weight: FontWeight.bold,
                          size: 18,
                        )
                      ],
                    )),
                    DataCell(Container(
                        decoration: BoxDecoration(
                          color: lightgrey,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: active, width: .5),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        child: CustomText(
                          text: "Assign Delivery",
                          color: active.withOpacity(.7),
                          weight: FontWeight.bold,
                          size: 15,
                        ))),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
