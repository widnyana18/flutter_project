import 'package:auto_route/auto_route.dart';
import 'package:crafity/interface/features/form_screen.dart';
import 'package:flutter/material.dart';

class CreditCardPage extends StatelessWidget {
  CreditCardPage({@PathParam('creditEvent') this.creditEvent});
  final String creditEvent;

  static Widget creditFormField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Credit Details',
          style: TextStyle(
            color: Color(0xFF858585),
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 25),
        Row(
          children: <Widget>[
            Flexible(
              flex: 5,
              child: TextFormField(
                controller: TextEditingController(),
                decoration: InputDecoration(
                  labelText: 'Credit Name',
                  border: UnderlineInputBorder(),
                ),
              ),
            ),
            SizedBox(width: 25),
            Flexible(
              flex: 2,
              child: TextFormField(
                controller: TextEditingController(),
                decoration: InputDecoration(
                  labelText: 'Bank Name',
                  border: UnderlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 18),
        TextFormField(
          controller: TextEditingController(),
          decoration: InputDecoration(
            labelText: 'Credit Number',
            hintText: 'XXXXXXXXXXXX',
            // suffix: Row(
            //   children: [
            //     Icon(FlutterIcons.cc_visa_faw, size: 16),
            //     Icon(FlutterIcons.cc_mastercard_faw, size: 16),
            //   ],
            // ),
            border: UnderlineInputBorder(),
          ),
        ),
        SizedBox(height: 18),
        Row(
          children: <Widget>[
            Flexible(
              child: TextFormField(
                controller: TextEditingController(),
                decoration: InputDecoration(
                  labelText: 'MM/YY',
                  border: UnderlineInputBorder(),
                ),
              ),
            ),
            SizedBox(width: 30),
            Flexible(
              child: TextFormField(
                controller: TextEditingController(),
                decoration: InputDecoration(
                  labelText: 'CVV',
                  hintText: 'DDDD',
                  border: UnderlineInputBorder(),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return FormScreen(
      form: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Create Credit Card',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          SizedBox(height: 25),
          creditFormField(),
          SizedBox(height: 20),
          ElevatedButton(
            child: Text(
              'Assign Credit',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              primary: Color(0xFFA5668B),
            ),
          ),
        ],
      ),
    );
  }
}
