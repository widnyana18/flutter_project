import 'package:crafity/application/authentication/authentication_bloc.dart';
import 'package:crafity/interface/router/router.gr.dart';
import 'package:crafity/interface/util/responsiveLayout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (_, state) {
        state.map(
          authenticated: (_) => context.router.replace(NavHandlingRoute()),
          unauthenticated: (_) {
            if (ResponsiveLayout.isSmallScreen(context)) {
              context.router.replace(AuthenticateUserRoute());
            } else {
              context.router.replace(NavHandlingRoute());
            }
          },
          uninitialized: (_) {},
        );
      },
      child: Material(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF4B335D),
                Color(0xFF783655),
                Color(0xFFC84C6E),
              ],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/splash_logo.png',
              ),
              Text(
                'Crafity',
                style: TextStyle(
                  fontFamily: 'Open Sans',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white70,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
