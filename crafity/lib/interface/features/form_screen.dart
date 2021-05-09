import 'package:auto_route/auto_route.dart';
import 'package:crafity/interface/util/responsiveLayout.dart';
import 'package:flutter/material.dart';

class FormScreen extends StatelessWidget {
  FormScreen({
    @required this.form,
    this.useBackBtn = true,
    this.popWebNavigator,
    this.whenPop,
  });
  final Widget form;
  final bool useBackBtn;
  final VoidCallback popWebNavigator;
  final VoidCallback whenPop;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return ResponsiveLayout(
      largeScreen: Dialog(
        child: Container(
          width: size.width * .3,
          padding: EdgeInsets.all(22),
          child: IntrinsicHeight(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                backBtn(context),
                SizedBox(height: 20),
                Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: form,
                ),
              ],
            ),
          ),
        ),
      ),
      smallScreen: Material(
        color: Color(0xFFF9F9F9),
        child: Padding(
          padding: EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              backBtn(context),
              SizedBox(height: 20),
              Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: form,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget backBtn(BuildContext context) => Offstage(
        offstage: !useBackBtn,
        child: IconButton(
          icon: Icon(Icons.keyboard_backspace, color: Colors.grey),
          onPressed: () {
            if (ResponsiveLayout.isSmallScreen(context)) {
              context.router.pop();
              whenPop();
            } else {
              Navigator.pop(context);
              popWebNavigator();
              whenPop();
            }
          },
        ),
      );

  static Widget loading(String message) => AspectRatio(
        aspectRatio: 1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(message, style: TextStyle(color: Colors.grey)),
            SizedBox(
              height: 15,
            ),
            CircularProgressIndicator(),
          ],
        ),
      );

  static Widget success(String message) => Dialog(
        child: Container(
          width: 300,
          padding: EdgeInsets.all(22),
          child: IntrinsicHeight(
            child: AspectRatio(
              aspectRatio: 1,
              child: Center(
                child: Text(
                  message,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Open Sans',
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}
