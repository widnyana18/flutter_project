import 'package:crafity/application/authentication/authentication_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ModelProduct extends StatelessWidget {
  static Widget productCounter() =>
      BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) => state.maybeWhen(
          authenticated: (_) => Card(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '03',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF858585),
                    ),
                  ),
                  SizedBox(width: 8),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        child: Icon(
                          Icons.add,
                          size: 14,
                          color: Colors.grey,
                        ),
                        onTap: () {},
                      ),
                      InkWell(
                        child: Icon(
                          Icons.minimize,
                          size: 14,
                          color: Colors.grey,
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: VerticalDivider(color: Colors.black),
                  ),
                  TextButton.icon(
                    icon: Icon(
                      Icons.add_shopping_cart,
                      color: Color(0xFFD5D5D5),
                    ),
                    label: Text(
                      '\$98',
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            color: Color(0xFF464646).withOpacity(.5),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          unauthenticated: () => Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            color: Color(0xFF464646).withOpacity(.5),
            child: Text(
              '\$67',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          orElse: () => null,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.0),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          PageView.builder(
            itemCount: 2,
            itemBuilder: (context, idx) => Image.asset('assets/perfume9.jpg'),
          ),
          Positioned(
            top: 0,
            child: Row(
              children: List.generate(
                4,
                (idx) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3),
                  child: CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.white30,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: IconButton(
              icon: Icon(Icons.ondemand_video, size: 20),
              color: Color(0xFFD5D5D5),
              onPressed: () {},
            ),
          ),
          Positioned(
            bottom: 0,
            child: productCounter(),
          ),
        ],
      ),
    );
  }
}
