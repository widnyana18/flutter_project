import 'package:auto_route/auto_route.dart';
import 'package:crafity/interface/router/router.gr.dart';
import 'package:crafity/interface/screen/cart/payment_page.dart';
import 'package:flutter/material.dart';
import 'package:crafity/interface/screen/cart/widgets/widgets.dart';
import 'package:crafity/interface/util/responsiveLayout.dart';

class OrderCartPage extends StatelessWidget {
  final String cartId;
  OrderCartPage({@PathParam('cartId') this.cartId});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Flexible(
              flex: 7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Shopping Cart',
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 20),
                  Expanded(
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 320,
                        crossAxisSpacing: 18,
                        mainAxisSpacing: 18,
                        childAspectRatio: 1.4,
                      ),
                      itemBuilder: (ctx, idx) {
                        return ProdCartCard();
                      },
                      itemCount: 4,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: PaymentPage(),
          ),
        ],
      ),
      smallScreen: Scaffold(
        backgroundColor: Color(0xFFF9F9F9),
        appBar: AppBar(
          title: Text(
            'Shopping Cart',
            style: TextStyle(
              fontSize: 25,
              fontFamily: 'OpenSans',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        persistentFooterButtons: <Widget>[
          CartBottomBar(
            labelBtn: 'Check Out',
            eventBtn: () {
              context.router.push(PaymentRoute());
            },
          ),
        ],
        body: ListView.builder(
          itemBuilder: (ctx, idx) => Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: ProdCartCard(),
          ),
          itemExtent: 120,
          itemCount: 5,
        ),
      ),
    );
  }
}
