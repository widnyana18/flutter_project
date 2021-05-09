import 'package:crafity/interface/screen/personal_dashboard/widgets/delivery_info.dart';
import 'package:crafity/interface/util/responsiveLayout.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DeliveryStatusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ButtonBar(
          children: [
            OutlinedButton(
              child: Text('Help Center',
                  style: TextStyle(
                    color: Colors.grey,
                  )),
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                shape: StadiumBorder(),
                primary: Colors.grey,
              ),
            ),
            IconButton(
              icon: Icon(Icons.info),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) => DeliveryInfo(),
                );
              },
              color: Color(0xFFF6B16C),
            ),
          ],
        ),
        SizedBox(height: 15),
        Expanded(
          child: ResponsiveLayout(
            largeScreen: GridView.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 370,
                mainAxisExtent: 150,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              itemCount: 4,
              itemBuilder: (ctx, idx) => deliveryStatus,
            ),
            smallScreen: ListView.builder(
              itemBuilder: (ctx, idx) => Padding(
                padding: EdgeInsets.symmetric(vertical: 7),
                child: deliveryStatus,
              ),
              itemCount: 3,
            ),
          ),
        ),
      ],
    );
  }

  Widget deliveryStatus = Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    child: Padding(
      padding: EdgeInsets.all(15),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Color(0xFFF6B16C),
            radius: 7.5,
            child: Text(
              '1',
              style: TextStyle(fontSize: 12, color: Colors.white),
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '14.20  Sunday, 8/20/2021',
                  maxLines: 1,
                  style: TextStyle(
                    fontFamily: 'Open Sans',
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Jakarta, Indonesia',
                  style: TextStyle(
                    color: Color(0xFF6794E3),
                    fontSize: 15,
                  ),
                ),
                Text(
                    'Go to Marica Office sorting goods, prepare left for Mexico'),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
