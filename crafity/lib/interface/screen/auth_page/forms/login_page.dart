import 'package:auto_route/auto_route.dart';
import 'package:crafity/application/blocs.dart';
import 'package:crafity/infrastructure/user/user_repository.dart';
import 'package:crafity/interface/features/form_screen.dart';
import 'package:crafity/interface/router/router.gr.dart';
import 'package:crafity/interface/screen/auth_page/forms/signup_page.dart';
import 'package:crafity/interface/screen/personal_dashboard/forms/reset_password_page.dart';
import 'package:crafity/interface/util/responsiveLayout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<LoginPage> {
  bool isLarge;
  bool hidePsw = true;

  @override
  void didChangeDependencies() {
    isLarge = ResponsiveLayout.isLargeScreen(context);
    super.didChangeDependencies();
  }

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
              context
                  .read<AuthenticationBloc>()
                  .add(AuthenticationEvent.authCheckRequested());
              context.router.root.replaceAll([NavHandlingRoute()]);
            },
          ),
        );
      },
      builder: (context, state) {
        return state.failureOrSuccessOption.fold(
          () {
            if (state.isSubmitting) {
              return FormScreen.loading('Authenticating Account');
            }
            return FormScreen(
              useBackBtn: false,
              form: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    'Login',
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
                  SizedBox(
                    height: 18,
                  ),
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
                        onPressed: () {
                          setState(() => hidePsw = !hidePsw);
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      InkWell(
                        onTap: _onForgetPassword,
                        child: Text(
                          'Forget Password ?',
                          style: TextStyle(color: Color(0xFF6794E3)),
                        ),
                      ),
                      InkWell(
                        onTap: _onSignUp,
                        child: Text(
                          "Don't have account ?",
                          style: TextStyle(color: Color(0xFF6794E3)),
                        ),
                      ),
                    ],
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
                                  UserEvent.loginWithEmailButton(),
                                );
                          }
                        : null,
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 18),
                  Container(
                    color: Colors.white,
                    child: Divider(height: .5, color: Colors.black12),
                  ),
                  SizedBox(height: 18),
                  GoogleSignInButton(),
                  SizedBox(height: 15),
                  FacebookSignInButton(),
                ],
              ),
            );
          },
          (either) => either.fold(
            (l) => null,
            (r) => FormScreen.success('Success To Login'),
          ),
        );
      },
    );
  }

  void _onForgetPassword() {
    if (isLarge) {
      Navigator.pop(context);
      showDialog(
        context: context,
        routeSettings: RouteSettings(name: '/login/forget_password'),
        builder: (ctx) => BlocProvider(
          create: (_) => UserBloc(context.read<UserRepository>()),
          child: SendEmailPage(),
        ),
      );
    } else {
      context.router.push(SendEmailRoute());
    }
  }

  void _onSignUp() {
    if (isLarge) {
      Navigator.pop(context);
      showDialog(
        context: context,
        routeSettings: RouteSettings(name: '/register/new_account'),
        builder: (ctx) => BlocProvider(
          create: (_) => UserBloc(context.read<UserRepository>()),
          child: RegisterPage(),
        ),
      );
    } else {
      context.router.root.push(CreateNewUserRoute(children: [RegisterRoute()]));
    }
  }
}

class FacebookSignInButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          primary: Color(0xFF236AB9),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        icon: Image.asset('assets/fb.png', width: 22),
        onPressed: () {
          context.read<UserBloc>().add(UserEvent.loginWithFacebookButton());
        },
        label: Text(
          'Continue with Facebook',
          style: TextStyle(color: Colors.white70),
        ),
      );
}

class GoogleSignInButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          primary: Color(0xFFCC3333),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        icon: Image.asset('assets/google.png', width: 22),
        onPressed: () {
          context.read<UserBloc>().add(UserEvent.loginWithGoogleButton());
        },
        label: Text(
          'Continue with Google',
          style: TextStyle(color: Colors.white70),
        ),
      );
}
