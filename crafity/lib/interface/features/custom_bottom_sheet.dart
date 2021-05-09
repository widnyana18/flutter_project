import 'package:flutter/material.dart';

class CustomBottomSheet {
  static void showModal(BuildContext context,
      {Widget child, String routeName}) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      routeSettings: RouteSettings(name: routeName),
      useRootNavigator: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: const Radius.circular(25.0),
          topRight: const Radius.circular(25.0),
        ),
      ),
      builder: (context) => SizedBox(
          height: MediaQuery.of(context).size.height * .8, child: child),
    );
  }
}
