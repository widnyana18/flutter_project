import 'package:auto_route/auto_route.dart';
import 'package:crafity/application/user/user_bloc.dart';
import 'package:crafity/interface/features/form_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChangeEmailPage extends StatelessWidget {
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
            (r) => context.tabsRouter.setActiveIndex(0),
          ),
        );
      },
      builder: (context, state) {
        return state.failureOrSuccessOption.fold(
          () {
            if (state.isSubmitting) {
              return FormScreen.loading('Authenticating Email');
            }

            return FormScreen(
              form: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    'New Account',
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
                    height: 20,
                  ),
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
                                .add(UserEvent.updateEmailButton());
                          }
                        : null,
                    child: Text(
                      'Save Account',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            );
          },
          (either) => either.fold(
            (l) => null,
            (r) => FormScreen.success('Success To user'),
          ),
        );
      },
    );
  }
}
