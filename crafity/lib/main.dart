import 'package:crafity/application/blocs.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:crafity/interface/router/router.gr.dart';

import 'infrastructure/repository.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  final UserRepository _userRepository = UserRepository();
  Bloc.observer = MyBlocObserver();
  runApp(MyApp(_userRepository));
}

class MyApp extends StatelessWidget {
  final UserRepository userRepository;
  const MyApp(this.userRepository);

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();

    return GetContext(
      context: context,
      child: RepositoryProvider.value(
        value: userRepository,
        child: BlocProvider(
          create: (_) => AuthenticationBloc(userRepository)
            ..add(AuthenticationEvent.authCheckRequested()),
          child: MaterialApp.router(
            routerDelegate: appRouter.delegate(),
            routeInformationParser: appRouter.defaultRouteParser(),
            title: 'Crafity',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              buttonColor: Colors.white,
              floatingActionButtonTheme: FloatingActionButtonThemeData(
                backgroundColor: Color(0xFFF6B16C),
              ),
              iconTheme: IconThemeData(color: Color(0xFF858585)),
              primaryColor: Color(0xFFF27496),
              fontFamily: 'Roboto',
            ),
            builder: (ctx, page) => page,
          ),
        ),
      ),
    );
  }
}

class GetContext extends InheritedWidget {
  const GetContext({Key key, this.child, this.context})
      : super(key: key, child: child);

  @override
  final Widget child;
  final BuildContext context;

  static GetContext of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<GetContext>();
  }

  @override
  bool updateShouldNotify(GetContext oldWidget) {
    return true;
  }
}
