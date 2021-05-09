import 'package:auto_route/auto_route.dart';
import 'package:crafity/application/blocs.dart';
import 'package:crafity/infrastructure/user/user_repository.dart';
import 'package:crafity/interface/features/form_screen.dart';
import 'package:crafity/interface/screen/auth_page/forms/login_page.dart';
import 'package:crafity/interface/util/responsiveLayout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SendEmailPage extends StatefulWidget {
  @override
  _SendEmailPageState createState() => _SendEmailPageState();
}

class _SendEmailPageState extends State<SendEmailPage> {
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
              context.router.pop();
            },
          ),
        );
      },
      builder: (context, state) {
        return state.failureOrSuccessOption.fold(
          () {
            if (state.isSubmitting) {
              return FormScreen.loading('Getting Email');
            }
            return FormScreen(
              popWebNavigator: () => showDialog(
                context: context,
                routeSettings: RouteSettings(name: '/login/'),
                builder: (ctx) => BlocProvider(
                  create: (_) => UserBloc(context.read<UserRepository>()),
                  child: LoginPage(),
                ),
              ),
              form: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    'Send Link Reset Password',
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'open Sans',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 25),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) => context
                        .read<UserBloc>()
                        .add(UserEvent.emailChanged(value)),
                    validator: (_) =>
                        state.email.value.fold((l) => l.msg, (r) => null),
                    style: TextStyle(fontSize: 15),
                    decoration: InputDecoration(
                      labelText: 'Email',
                      hintText: 'xxx@example.com',
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      primary: Color(0xFFA5668B),
                    ),
                    onPressed: state.email.isValid && !state.isSubmitting
                        ? () {
                            context
                                .read<UserBloc>()
                                .add(UserEvent.sendLinkToEmailButton());
                          }
                        : null,
                    child: Text(
                      'Send Email',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            );
          },
          (either) => either.fold(
            (l) => null,
            (r) => FormScreen.success(
                'Please check your email to get reset password link'),
          ),
        );
      },
    );
  }
}

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({@PathParam('uid') this.uid});
  final String uid;

  @override
  _ResetPasswordPageState createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  bool hidePsw = true;
  bool isFormValid(UserState state) {
    return state.password.isValid &&
        state.password.isConfirmPswValid &&
        !state.isSubmitting;
  }

  @override
  Widget build(BuildContext context) {
    final authState = context.select((AuthenticationBloc bloc) => bloc.state);
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
              if (authState is Authenticated) {
                context.tabsRouter.setActiveIndex(0);
              }
            },
          ),
        );
      },
      builder: (context, state) {
        return state.failureOrSuccessOption.fold(
          () {
            if (state.isSubmitting) {
              return FormScreen.loading('Authenticating Password');
            }
            return FormScreen(
              useBackBtn: authState is Authenticated &&
                  ResponsiveLayout.isSmallScreen(context),
              form: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    'Reset Password',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 25),
                  TextFormField(
                    obscureText: hidePsw,
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
                  SizedBox(height: 18),
                  TextFormField(
                    obscureText: hidePsw,
                    onChanged: (value) => context
                        .read<UserBloc>()
                        .add(UserEvent.passwordChanged(confirmPsw: value)),
                    validator: (_) => state.password.confirmPsw
                        .fold((l) => l.msg, (r) => null),
                    style: TextStyle(fontSize: 15),
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(Icons.remove_red_eye),
                        onPressed: _togglePassword,
                      ),
                      labelText: 'Confirm Password',
                      helperText: 'Password should match',
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      primary: Color(0xFFA5668B),
                    ),
                    onPressed: isFormValid(state)
                        ? () {
                            context
                                .read<UserBloc>()
                                .add(UserEvent.updatePasswordButton());
                          }
                        : null,
                    child: Text(
                      'Save New Password',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
          (either) => either.fold(
            (l) => null,
            (r) => FormScreen.success('Success to Reset Password'),
          ),
        );
      },
    );
  }

  void _togglePassword() {
    setState(() => !hidePsw);
  }
}
