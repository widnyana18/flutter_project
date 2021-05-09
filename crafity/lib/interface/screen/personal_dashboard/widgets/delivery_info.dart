import 'package:flutter/material.dart';

class DeliveryInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: MediaQuery.of(context).size.width * .3,
        padding: EdgeInsets.all(20),
        child: IntrinsicHeight(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'ID : ihc79234hkahdknkax',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(height: 12),
                Text('Time to Delivery'),
                SizedBox(height: 6),
                Text(
                  '7 Days',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 12),
                Divider(),
                SizedBox(height: 12),
                Text('Location'),
                SizedBox(height: 6),
                Text(
                  'Carnavol Street 88, Munggu, South Kuta, Badung, Bali, Indonesia',
                  style: TextStyle(
                    color: Color(0xFF6794E3),
                  ),
                ),
                SizedBox(height: 12),
                Divider(),
                SizedBox(height: 12),
                Text(
                    '1. Go to Marica Office sorting goods, prepare left for Mexico'),
                SizedBox(height: 10),
                Text(
                    '2. Go to Marica Office sorting goods, prepare left for Mexico'),
                SizedBox(height: 10),
                Text(
                    '3. Go to Marica Office sorting goods, prepare left for Mexico'),
                SizedBox(height: 10),
                Text(
                    '4. Go to Marica Office sorting goods, prepare left for Mexico'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
