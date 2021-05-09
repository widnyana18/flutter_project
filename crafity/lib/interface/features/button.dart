import 'package:crafity/application/authentication/authentication_bloc.dart';
import 'package:crafity/interface/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GradientButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const GradientButton({@required this.text, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: const [
            Color(0xFf0E103D),
            Color(0xFFA5668B),
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 30),
          primary: Colors.transparent,
          shape: StadiumBorder(),
        ),
        onPressed: onPressed,
        child: Text(text,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            )),
      ),
    );
  }
}

class TagButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  final Color color;

  TagButton({@required this.label, this.onTap, this.color});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: color,
        shape: StadiumBorder(),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: Colors.white,
          fontSize: 9,
        ),
      ),
      onPressed: onTap,
    );
  }
}

class FloatingBtn extends StatelessWidget {
  FloatingBtn({this.cartId});
  final String cartId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, state) {
        return state.maybeWhen(
          authenticated: (_) => Stack(
            children: [
              Positioned(
                bottom: 3,
                right: 3,
                child: FloatingActionButton(
                  onPressed: () {
                    context.router
                        .push(OrderCartRoute(cartId: '98y123eihkajdk7h'));
                  },
                  backgroundColor: Color(0xFFF6B16C),
                  child: Icon(
                    Icons.shopping_cart,
                    color: Color(0xFFEEEEEE),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 3, horizontal: 7),
                  decoration: BoxDecoration(
                    color: Color(0xFFF6DA6C),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    '4',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ),
              SizedBox(width: 10),
            ],
          ),
          orElse: () => SizedBox.shrink(),
        );
      },
    );
  }
}
