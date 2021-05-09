import 'package:auto_route/auto_route.dart';
import 'package:crafity/application/user/user_bloc.dart';
import 'package:crafity/infrastructure/user/user_repository.dart';
import 'package:crafity/interface/features/form_screen.dart';
import 'package:crafity/interface/util/responsiveLayout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ReAuthAccountPage extends StatefulWidget {
  ReAuthAccountPage({this.popUpPage, this.redirectPage, this.routeName});
  final Widget popUpPage;
  final PageRouteInfo redirectPage;
  final String routeName;

  @override
  _ReAuthAccountState createState() => _ReAuthAccountState();
}

class _ReAuthAccountState extends State<ReAuthAccountPage> {
  bool hidePsw = true;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserBloc, UserState>(
      listener: (context, state) {
        state.failureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (l) => ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(
                  content: Text(l),
                ),
              ),
            (r) {
              if (ResponsiveLayout.isLargeScreen(context)) {
                Navigator.pop(context);
                showDialog(
                  context: context,
                  routeSettings:
                      RouteSettings(name: '/settings/${widget.routeName}'),
                  builder: (_) => BlocProvider(
                    create: (_) => UserBloc(context.read<UserRepository>()),
                    child: widget.popUpPage,
                  ),
                );
              } else {
                context.router.root.replace(widget.redirectPage);
              }
            },
          ),
        );
      },
      builder: (context, state) {
        return state.failureOrSuccessOption.fold(
          () {
            if (state.isSubmitting) {
              return FormScreen.loading('Reauthenticating Account');
            }
            return FormScreen(
              useBackBtn: false,
              form: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    'Unlock Page',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  TextFormField(
                    onChanged: (value) => context
                        .read<UserBloc>()
                        .add(UserEvent.passwordChanged(password: value)),
                    validator: (_) =>
                        state.password.value.fold((l) => l.msg, (r) => null),
                    obscureText: hidePsw,
                    style: TextStyle(fontSize: 15),
                    decoration: InputDecoration(
                      labelText: 'Password',
                      helperText:
                          'Password must has min 8 character, \n capital, numeric and symbol',
                      hintText: '123Dino&mania',
                      suffixIcon: IconButton(
                        icon: Icon(Icons.remove_red_eye),
                       onPressed: () {
                          setState(() => hidePsw = !hidePsw);
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      primary: Color(0xFFA5668B),
                    ),
                    onPressed: state.password.isValid && !state.isSubmitting
                        ? () {
                            context
                                .read<UserBloc>()
                                .add(UserEvent.reauthenticateUserButton());
                          }
                        : null,
                    child: Text(
                      'Authenticate',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            );
          },
          (either) => either.fold(
            (l) => null,
            (r) => FormScreen.success('Success Reload Account'),
          ),
        );
      },
    );
  }
}
