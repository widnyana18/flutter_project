import 'package:auto_route/auto_route.dart';
import 'package:crafity/application/blocs.dart';
import 'package:crafity/interface/features/form_screen.dart';
import 'package:crafity/interface/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DeleteUserAlert extends StatefulWidget {
  @override
  _DeleteUserAlertState createState() => _DeleteUserAlertState();
}

class _DeleteUserAlertState extends State<DeleteUserAlert> {
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
            (r) => context.router.root.replaceAll([SplashRoute()]),
          ),
        );
      },
      builder: (context, state) {
        return state.failureOrSuccessOption.fold(
          () {
            if (state.isSubmitting) {
              return FormScreen.loading('Clean Data User');
            }
            return AlertDialog(
              title: Text(
                'Delete User',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  fontFamily: 'Open Sans',
                ),
              ),
              content: Text('Sure, you want delete your account?'),
              actions: [
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.grey,
                  ),
                  child: Text('Cancel', style: TextStyle(color: Colors.white)),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xFFC84C6E),
                  ),
                  child: Text('Delete', style: TextStyle(color: Colors.white)),
                  onPressed: () {
                    context.read<UserBloc>().add(UserEvent.deleteAccount());
                  },
                ),
              ],
            );
          },
          (either) => either.fold(
            (l) => null,
            (r) => FormScreen.loading('Success to Delete User'),
          ),
        );
      },
    );
  }
}
