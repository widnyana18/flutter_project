import 'package:flutter/material.dart';

class Partnership extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'Partnership',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            fontFamily: 'Raleway',
          ),
        ),
        SizedBox(height: 18),
        SizedBox(
          width: 460,
          child: Wrap(
            alignment: WrapAlignment.center,
            runAlignment: WrapAlignment.center,
            spacing: 20,
            runSpacing: 20,
            children: List.generate(
              6,
              (idx) {
                return Container(
                  width: 140,
                  height: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        offset: Offset(-1, 3),
                        blurRadius: 6,
                      )
                    ],
                    color: Color(0xFF858585),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
