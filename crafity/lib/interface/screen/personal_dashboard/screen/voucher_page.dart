import 'package:crafity/interface/features/card/voucher_card.dart';
import 'package:crafity/interface/util/responsiveLayout.dart';
import 'package:flutter/material.dart';

class VoucherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F9F9),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Voucher',
          style: TextStyle(
            fontFamily: 'Open Sans',
            fontSize: 22,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ResponsiveLayout(
        largeScreen: Padding(
          padding: EdgeInsets.all(17),
          child: CustomScrollView(
            slivers: [
              SliverGrid(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 260,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                ),
                delegate: SliverChildBuilderDelegate(
                  (ctx, idx) => Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: VoucherCardAtr.head(context),
                  ),
                  childCount: 2,
                ),
              ),
              SliverPadding(
                padding: EdgeInsets.only(top: 25, bottom: 12),
                sliver: SliverToBoxAdapter(
                  child: Text(
                    'You Might Interested',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SliverGrid(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 260,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                ),
                delegate: SliverChildBuilderDelegate(
                  (ctx, idx) => Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: VoucherCardAtr.head(context),
                  ),
                  childCount: 4,
                ),
              ),
            ],
          ),
        ),
        smallScreen: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 5,
              child: VoucherCard(),
            ),
            SizedBox(height: 20),
            Text(
              'You Might Interested',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 12),
            Expanded(
              flex: 2,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemExtent: 260,
                itemBuilder: (ctx, idx) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: VoucherCardAtr.head(context),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
