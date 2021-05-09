import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class NotifDetailsPage extends StatelessWidget {
  NotifDetailsPage({@PathParam('notifName') this.notifName});
  final String notifName;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
