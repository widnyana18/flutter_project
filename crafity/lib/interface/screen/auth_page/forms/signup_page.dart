import 'package:crafity/interface/screen/auth_page/forms/forms.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';

import 'package:crafity/application/blocs.dart';
import 'package:crafity/infrastructure/user/user_repository.dart';
import 'package:crafity/interface/features/form_screen.dart';
import 'package:crafity/interface/router/router.gr.dart';
import 'package:crafity/interface/util/responsiveLayout.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<RegisterPage> {
  bool isShowPsw = true;
  bool isShowConfirmPsw = true;

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
                  routeSettings: RouteSettings(name: 'signup/regist_phone'),
                  builder: (ctx) => BlocProvider(
                    create: (_) => UserBloc(context.read<UserRepository>()),
                    child: VerifyAccountPage(),
                  ),
                ).whenComplete(() {
                  final _authBloc =
                      BlocProvider.of<AuthenticationBloc>(context);
                  if (_authBloc.state is Unauthenticated) {
                    BlocProvider.of<UserBloc>(context).add(DeleteAccount());
                  }
                });
              } else {
                context.router.push(VerifyAccountRoute());
              }
            },
          ),
        );
      },
      builder: (context, state) {
        return state.failureOrSuccessOption.fold(
          () {
            if (state.isSubmitting) {
              return FormScreen.loading('Register New Account');
            }
            return FormScreen(
              useBackBtn: false,
              form: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    'Register Account',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  TextFormField(
                    onChanged: (value) => context
                        .read<UserBloc>()
                        .add(UserEvent.emailChanged(value)),
                    validator: (_) =>
                        state.email.value.fold((l) => l.msg, (r) => null),
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(fontSize: 15),
                    decoration: InputDecoration(
                      labelText: 'Email',
                      hintText: 'xxx@example.com',
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  TextFormField(
                    obscureText: isShowPsw,
                    onChanged: (value) => context
                        .read<UserBloc>()
                        .add(UserEvent.passwordChanged(password: value)),
                    validator: (_) =>
                        state.password.value.fold((l) => l.msg, (r) => null),
                    style: TextStyle(fontSize: 15),
                    decoration: InputDecoration(
                      labelText: 'Password',
                      helperText:
                          'Password must has min 8 character, \n capital, numeric and symbol',
                      hintText: '123Dino&mania',
                      suffixIcon: IconButton(
                        icon: Icon(Icons.remove_red_eye),
                        onPressed: _togglePassword,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  TextFormField(
                    obscureText: isShowConfirmPsw,
                    onChanged: (value) => context
                        .read<UserBloc>()
                        .add(UserEvent.passwordChanged(confirmPsw: value)),
                    validator: (_) => state.password.confirmPsw
                        .fold((l) => l.msg, (r) => null),
                    style: TextStyle(fontSize: 15),
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(Icons.remove_red_eye),
                        onPressed: _toggleConfirmPsw,
                      ),
                      labelText: 'Confirm Password',
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
                    onPressed: state.isFormValid && !state.isSubmitting
                        ? () {
                            context.read<UserBloc>().add(
                                  UserEvent.createAccountButton(),
                                );
                          }
                        : null,
                    child: Text(
                      'Verification Account',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 18),
                  InkWell(
                    onTap: _onBackToLogin,
                    child: Text(
                      'Have an Account?',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Color(0xFF6794E3)),
                    ),
                  ),
                ],
              ),
            );
          },
          (either) => either.fold(
            (l) => null,
            (r) => FormScreen.success('Success To Create Account'),
          ),
        );
      },
    );
  }

  void _togglePassword() {
    setState(() => isShowPsw = !isShowPsw);
  }

  void _toggleConfirmPsw() {
    setState(() => isShowConfirmPsw = !isShowConfirmPsw);
  }

  void _onBackToLogin() {
    if (ResponsiveLayout.isLargeScreen(context)) {
      Navigator.pop(context);
      showDialog(
        context: context,
        routeSettings: RouteSettings(name: '/login/'),
        builder: (ctx) => BlocProvider(
          create: (_) => UserBloc(context.read<UserRepository>()),
          child: LoginPage(),
        ),
      );
    } else {
      context.router.pop();
    }
  }
}
