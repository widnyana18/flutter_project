import 'package:auto_route/auto_route.dart';
import 'package:crafity/interface/features/card/custom_card.dart';
import 'package:crafity/interface/features/card/voucher_card.dart';
import 'package:crafity/interface/router/router.gr.dart';
import 'package:flutter/material.dart';

class ProdCartCard extends StatelessWidget {
  Widget productDesc() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: [
            Text('x3'),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: VerticalDivider(color: Color(0xFFDBDBDB)),
            ),
            Text('Big'),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: VerticalDivider(color: Color(0xFFDBDBDB)),
            ),
            CircleAvatar(
              backgroundColor: Color(0xFFA74D76),
              radius: 8,
            ),
          ],
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          '\$75',
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      title: 'Marine Channel',
      hero: 'assets/perfume9.jpg',
      subtitle: productDesc(),
      trailing: IconButton(
        icon: Icon(Icons.delete),
        color: Colors.grey,
        onPressed: () {},
      ),
      onTap: () {
        context.router.navigate(ProductDetailsRoute(prodName: 'yeou_liku'));
      },
    );
  }
}

class CollectionCartCard extends StatelessWidget {
  Widget collectionDesc() => Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('3 items'),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: CircleAvatar(
              backgroundColor: Color(0xFF858585),
              radius: 2,
            ),
          ),
          Text('x3'),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: CircleAvatar(
              backgroundColor: Color(0xFF858585),
              radius: 2,
            ),
          ),
          Text(
            '\$50',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      title: 'Marine Channel',
      hero: 'assets/perfume9.jpg',
      subtitle: collectionDesc(),
      trailing: IconButton(
        icon: Icon(Icons.delete),
        color: Colors.grey,
        onPressed: () {},
      ),
      onTap: () {
        context.router.navigate(CollectionDetailsRoute(collName: 'yeou_liku'));
      },
    );
  }
}

class VoucherCartCard extends StatelessWidget {
  Widget voucherDesc() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('If you interest, check details to get more information.'),
        SizedBox(
          height: 4,
        ),
        Text(
          '\$75',
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      title: 'High Class Statue Lioe',
      hero: 'assets/perfume9.jpg',
      subtitle: voucherDesc(),
      trailing: IconButton(
        icon: Icon(Icons.delete),
        color: Colors.grey,
        onPressed: () {},
      ),
      onTap: () {
        showDialog(
          context: context,
          routeSettings: RouteSettings(name: '/voucher/paket_panas/details'),
          builder: (_) => VoucherDetailsPage(),
        );
      },
    );
  }
}

class EventCartCard extends StatelessWidget {
  Widget eventDesc() {
    return Row(
      children: <Widget>[
        Text(
          'Bali, Indonesia',
          style: TextStyle(color: Color(0xFF6794E3)),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: CircleAvatar(
            backgroundColor: Colors.grey,
            radius: 2,
          ),
        ),
        Text(
          '\$75',
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      title: 'Ogoh-ogoh Competition asd Recoin',
      hero: 'assets/perfume9.jpg',
      subtitle: eventDesc(),
      trailing: IconButton(
        icon: Icon(Icons.delete),
        color: Colors.grey,
        onPressed: () {},
      ),
      onTap: () {
        context.router.navigate(EventDetailsRoute(eventName: 'yeou_liku'));
      },
    );
  }
}
