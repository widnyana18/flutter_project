import 'package:auto_route/auto_route.dart';
import 'package:crafity/application/user/user_bloc.dart';
import 'package:crafity/infrastructure/user/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

export 'forms/forms.dart';

class AuthAccountPage extends AutoRouter implements AutoRouteWrapper {
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<UserBloc>(
      create: (_) => UserBloc(context.read<UserRepository>()),
      child: this,
    );
  }
}
