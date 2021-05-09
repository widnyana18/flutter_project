import 'package:crafity/application/authentication/authentication_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VoucherCardAtr {
  static Widget head(BuildContext context, {bool detailsOpened = false}) {
    void _showDetails() {
      showDialog(
        context: context,
        routeSettings: RouteSettings(name: '/voucher/h873kkda8832oij/details'),
        builder: (_) => VoucherDetailsPage(),
      );
    }

    return InkWell(
      onTap: !detailsOpened ? _showDetails : () {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          AspectRatio(
            aspectRatio: 1.5,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage('perfume9.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Bleu Da Chennal',
                  maxLines: 1,
                  style: TextStyle(
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'Runner Marcopolo',
                  maxLines: 1,
                  style: TextStyle(color: Color(0xFF858585)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  static Widget body() {
    return Padding(
      padding: EdgeInsets.fromLTRB(18, 0, 18, 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: <Widget>[
              Icon(
                Icons.timer,
                size: 14,
                color: Color(0xFF858585),
              ),
              SizedBox(width: 12),
              Text('Valid for 7 days'),
            ],
          ),
          SizedBox(height: 16),
          Row(
            children: <Widget>[
              Icon(
                Icons.description,
                size: 14,
                color: Color(0xFF858585),
              ),
              SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bonus',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                      'If you interest, check details to get more information.'),
                ],
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            children: <Widget>[
              Icon(
                Icons.info_outline,
                size: 14,
                color: Color(0xFF858585),
              ),
              SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Guidline',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                      '1. If you interest, check details to get more information.\n'
                      '2. If you interest, check details to get more information.'),
                ],
              ),
            ],
          ),
          SizedBox(height: 16),
          BlocBuilder<AuthenticationBloc, AuthenticationState>(
            builder: (context, state) {
              return state.maybeWhen(
                authenticated: (_) => OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                      side: BorderSide(color: Color(0xFF858585)),
                    ),
                  ),
                  icon: Icon(
                    Icons.add_shopping_cart,
                    color: Color(0xFF858585),
                  ),
                  label: Text(
                    '\$87',
                    style: TextStyle(color: Color(0xFF858585)),
                  ),
                  onPressed: () {},
                ),
                unauthenticated: () => SizedBox.shrink(),
                orElse: () => null,
              );
            },
          ),
        ],
      ),
    );
  }
}

class VoucherCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ExpansionPanelList(
        dividerColor: Colors.transparent,
        expandedHeaderPadding: EdgeInsets.zero,
        children: List.generate(
          4,
          (index) => ExpansionPanel(
            canTapOnHeader: true,
            headerBuilder: (ctx, isExpand) => Padding(
              padding: EdgeInsets.all(15),
              child: VoucherCardAtr.head(context, detailsOpened: true),
            ),
            body: VoucherCardAtr.body(),
          ),
        ),
      ),
    );
  }
}

class VoucherDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Container(
        padding: EdgeInsets.all(20),
        constraints:
            BoxConstraints(maxWidth: MediaQuery.of(context).size.width * .8),
        width: 420,
        child: IntrinsicHeight(
          child: Column(
            children: <Widget>[
              VoucherCardAtr.head(context, detailsOpened: true),
              Expanded(child: VoucherCardAtr.body()),
            ],
          ),
        ),
      ),
    );
  }
}
