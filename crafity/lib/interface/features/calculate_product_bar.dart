import 'package:flutter/material.dart';

class CalculateProductBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset(
            'assets/perfume11.png',
            fit: BoxFit.contain,
          ),
          SizedBox(width: 20),
          Text(
            '03',
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFF858585),
            ),
          ),
          SizedBox(width: 8),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 15,
                height: 15,
                child: IconButton(
                  padding: EdgeInsets.zero,
                  icon: Icon(Icons.add),
                  iconSize: 14,
                  onPressed: () {},
                ),
              ),
              SizedBox(
                width: 15,
                height: 15,
                child: IconButton(
                  padding: EdgeInsets.zero,
                  icon: Icon(Icons.minimize),
                  iconSize: 14,
                  onPressed: () {},
                ),
              ),
            ],
          ),
          SizedBox(width: 25),
          Text(
            '\$310',
            style: TextStyle(fontSize: 25),
          ),
          SizedBox(width: 20),
          ElevatedButton.icon(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color(0xFFA74D76)),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            onPressed: () {},
            icon: Icon(
              Icons.add_shopping_cart,
              color: Color(0xFFEEEEEE),
              size: 16,
            ),
            label: Text(
              'Add to Cart',
              style: TextStyle(
                color: Color(0xFFEEEEEE),
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}
