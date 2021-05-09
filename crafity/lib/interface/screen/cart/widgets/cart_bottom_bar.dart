import 'package:flutter/material.dart';

class CartBottomBar extends StatelessWidget {
  CartBottomBar({this.labelBtn, this.eventBtn});
  final String labelBtn;
  final VoidCallback eventBtn;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '\$26',
          style: TextStyle(
            color: Color(0xFFA74D76),
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(width: 25),
        Flexible(
          child: ButtonTheme(
            minWidth: double.infinity,
            child: ElevatedButton.icon(
              icon: Icon(
                Icons.payment,
                color: Colors.white,
              ),
              label: Text(labelBtn),
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFA74D76),
                textStyle: TextStyle(color: Colors.white),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: eventBtn,
            ),
          ),
        ),
      ],
    );
  }
}
