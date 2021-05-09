import 'package:auto_route/auto_route.dart';
import 'package:crafity/application/blocs.dart';
import 'package:crafity/infrastructure/user/user_repository.dart';
import 'package:crafity/interface/features/form_screen.dart';
import 'package:crafity/interface/screen/auth_page/forms/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:crafity/interface/router/router.gr.dart';
import 'package:crafity/interface/util/responsiveLayout.dart';

// ignore: must_be_immutable
class VerifyAccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authState = context.select((AuthenticationBloc b) => b.state);
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
                  routeSettings: RouteSettings(name: '/register/verify_phone'),
                  builder: (ctx) => BlocProvider<UserBloc>(
                    create: (_) => UserBloc(context.read<UserRepository>()),
                    child: SendSmsCodePage(),
                  ),
                ).whenComplete(
                  () => authState.maybeMap(
                    unauthenticated: (_) =>
                        context.read<UserBloc>().add(UserEvent.deleteAccount()),
                    orElse: () => null,
                  ),
                );
              } else {
                context.router.push(
                  authState.maybeMap(
                    authenticated: (s) => VerifyNewPhoneNumber(),
                    unauthenticated: (s) => SendSmsCodeRoute(),
                    orElse: () => null,
                  ),
                );
              }
            },
          ),
        );
      },
      builder: (context, state) {
        return state.failureOrSuccessOption.fold(
          () {
            if (state.isSubmitting) {
              return FormScreen.loading('Validation Your Phone');
            }

            return FormScreen(
              whenPop: () {
                authState.maybeMap(
                  unauthenticated: (_) =>
                      context.read<UserBloc>().add(UserEvent.deleteAccount()),
                  orElse: () => null,
                );
              },
              popWebNavigator: () {
                authState.maybeMap(
                  unauthenticated: (_) => showDialog(
                    context: context,
                    routeSettings: RouteSettings(name: '/register/new_account'),
                    builder: (ctx) => BlocProvider<UserBloc>(
                      create: (_) => UserBloc(context.read<UserRepository>()),
                      child: RegisterPage(),
                    ),
                  ),
                  orElse: () => null,
                );
              },
              form: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    'Verify Account',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 25),
                  TextFormField(
                    keyboardType: TextInputType.phone,
                    onChanged: (value) => context
                        .read<UserBloc>()
                        .add(UserEvent.phoneNumberChanged(phoneNumber: value)),
                    validator: (_) =>
                        state.phoneNumber.value.fold((l) => l.msg, (r) => null),
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                      prefix: DropdownButton(
                        items: phoneCode.map((item) {
                          return DropdownMenuItem(
                            child: Text('+$item'),
                            value: phoneCode.indexOf(item),
                          );
                        }).toList(),
                        onChanged: (val) {},
                        icon: Icon(Icons.keyboard_arrow_down),
                        iconSize: 16,
                        value: 0,
                      ),
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
                    onPressed: state.phoneNumber.isValid && !state.isSubmitting
                        ? () {
                            context.read<UserBloc>().add(
                                  UserEvent.registerPhoneButton(),
                                );
                          }
                        : null,
                    child: Text(
                      'Send Code SMS',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            );
          },
          (either) => either.fold(
            (l) => null,
            (r) => FormScreen.success('Success to Register Phone Number'),
          ),
        );
      },
    );
  }

  List<String> phoneCode = ['62', '70', '85'];
}

class SendSmsCodePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authState = context.select((AuthenticationBloc b) => b.state);
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
              authState.maybeMap(
                authenticated: (_) => context.tabsRouter.setActiveIndex(0),
                unauthenticated: (_) {
                  context
                      .read<AuthenticationBloc>()
                      .add(AuthenticationEvent.authCheckRequested());
                  context.router.root.replaceAll([NavHandlingRoute()]);
                },
                orElse: () => null,
              );
            },
          ),
        );
      },
      builder: (context, state) {
        return state.failureOrSuccessOption.fold(
          () {
            if (state.isSubmitting) {
              return FormScreen.loading('Analyzing Code');
            }

            return FormScreen(
              popWebNavigator: () {
                showDialog(
                  context: context,
                  routeSettings: RouteSettings(name: '/register/verify_phone'),
                  builder: (ctx) => BlocProvider<UserBloc>(
                    create: (_) => UserBloc(context.read<UserRepository>()),
                    child: VerifyAccountPage(),
                  ),
                ).whenComplete(
                  () => authState.maybeMap(
                    unauthenticated: (_) =>
                        context.read<UserBloc>().add(DeleteAccount()),
                    orElse: () => null,
                  ),
                );
              },
              form: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    'Send SMS Code',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 25),
                  Text(
                    state.phoneNumber.getOrCrash(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF6794E3),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    onChanged: (value) => context
                        .read<UserBloc>()
                        .add(UserEvent.phoneNumberChanged(smsCode: value)),
                    validator: (_) =>
                        state.phoneNumber.value.fold((l) => l.msg, (r) => null),
                    smartDashesType: SmartDashesType.enabled,
                    keyboardType: TextInputType.number,
                    style: TextStyle(fontSize: 15),
                    decoration: InputDecoration(
                      labelText: 'SMS Code',
                      helperText: 'Check SMS Code on Your Phone',
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
                    onPressed: state.phoneNumber.isValid && !state.isSubmitting
                        ? () {
                            context.read<UserBloc>().add(
                                  UserEvent.verifyPhoneButton(),
                                );
                          }
                        : null,
                    child: Text(
                      'Submit Code',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 18),
                  InkWell(
                    onTap: () {},
                    child: Text('Retrieval verification code'),
                  ),
                ],
              ),
            );
          },
          (either) => either.fold(
            (l) => null,
            (r) => FormScreen.success('Your Account Success to Registered'),
          ),
        );
      },
    );
  }
}
