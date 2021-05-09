import 'package:auto_route/auto_route.dart';
import 'package:crafity/interface/router/router.gr.dart';
import 'package:flutter/material.dart';

class CompanyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        leading: AspectRatio(
          aspectRatio: 1,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage('person.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        title: Text(
          'Roxy Monrow FT',
          maxLines: 1,
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'Open Sans',
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          'Daniel Sircrow - 17 pcs',
          maxLines: 1,
          style: TextStyle(color: Colors.grey),
        ),
        trailing: Text('6.7'),
        minLeadingWidth: 55,
        onTap: () {
          context.router.root
              .push(OwnerDashboardRoute(ownerName: 'roxy_barbara'));
        },
      ),
    );
  }
}
