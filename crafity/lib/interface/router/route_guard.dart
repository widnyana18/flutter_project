import 'package:auto_route/auto_route.dart';
import 'package:crafity/application/authentication/authentication_bloc.dart';
import 'package:crafity/interface/router/router.gr.dart';
import 'package:crafity/interface/util/responsiveLayout.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginGuard extends AutoRouteGuard {
  @override
  Future<bool> canNavigate(
    List<PageRouteInfo> pendingRoutes,
    StackRouter router,
  ) async {
    final context = router.navigatorKey.currentContext;
    final state = context.select((AuthenticationBloc bloc) => bloc.state);

    if (state is Unauthenticated && ResponsiveLayout.isSmallScreen(context)) {
      context.router.root.replace(AuthenticateUserRoute());
    }
    if (state is Uninitialized) {
      context.router.root.replace(AuthenticateUserRoute());
      print('success redirect to splash page');
    }
    context.router.root.replace(NavHandlingRoute());
    return true;
  }
}

class AuthRouteGuard extends AutoRouteGuard {
  @override
  Future<bool> canNavigate(
    List<PageRouteInfo> pendingRoutes,
    StackRouter router,
  ) async {
    final context = router.navigatorKey.currentContext;
    final state = BlocProvider.of<AuthenticationBloc>(context).state;

    if (state is Unauthenticated) {
      if (ResponsiveLayout.isLargeScreen(context)) {
        router.root.navigate(NavHandlingRoute());
      }
      router.root.push(AuthenticateUserRoute());
    }
    return true;
  }
}
