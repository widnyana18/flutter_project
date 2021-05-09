import 'package:crafity/interface/screen/browse/widgets/company_card.dart';
import 'package:crafity/interface/util/utils.dart';
import 'package:flutter/material.dart';

class IndustryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Material(
          elevation: 8,
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              'Indonesia',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Flexible(
          child: Padding(
            padding: EdgeInsets.all(18),
            child: ResponsiveLayout(
              largeScreen: GridView.builder(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 320,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  mainAxisExtent: 70,
                ),
                itemBuilder: (_, index) {
                  return CompanyCard();
                },
                itemCount: 12,
              ),
              smallScreen: ListView.builder(
                itemBuilder: (_, idx) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 7, horizontal: 12),
                    child: CompanyCard(),
                  );
                },
                itemCount: 6,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
