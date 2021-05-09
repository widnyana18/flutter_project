import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      '404',
      style: TextStyle(
        fontFamily: 'Open Sans',
        fontSize: 50,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
