import 'package:flutter/material.dart';
import 'package:website/constants/style.dart';
import 'package:data_tables/data_tables.dart';
import '../../../widgets/custom_text.dart';

class DriversTableee extends StatelessWidget {
  const DriversTableee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columnSpacing: 12,
      horizontalMargin: 12,
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
        10,
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
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                child: CustomText(
                  text: "Block Driver",
                  color: active.withOpacity(.7),
                  weight: FontWeight.bold,
                  size: 15,
                ))),
          ],
        ),
      ),
    );
  }
}
