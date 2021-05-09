import 'package:crafity/application/blocs.dart';
import 'package:crafity/infrastructure/user/user_repository.dart';
import 'package:crafity/interface/features/widgets.dart';
import 'package:crafity/interface/screen/auth_page/forms/login_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:crafity/interface/util/utils.dart';
import 'widgets/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ResponsiveLayout(
      largeScreen: Scaffold(
        floatingActionButton: FloatingBtn(),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: LimitedBox(
                maxHeight: size.height,
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox.shrink(),
                          BlocBuilder<AuthenticationBloc, AuthenticationState>(
                            builder: (context, state) {
                              if (state is Authenticated) {
                                return AccountProfile();
                              }
                              return Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20.0, vertical: 5),
                                child: GradientButton(
                                  text: 'Login',
                                  onPressed: _openLogin,
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                      Spacer(),
                      Expanded(
                        flex: 2,
                        child: Row(
                          children: <Widget>[
                            Spacer(),
                            Image.asset(
                              'bg.png',
                            ),
                            Spacer(),
                            Flexible(
                              flex: 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Let's Pick Your Favorite Art To Give Aesthetic In Your Life",
                                    style: TextStyle(
                                      fontFamily: 'Open Sans',
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 15),
                                  Text(
                                    'Any product we can prevent and you can build your shop free. If you interest, check details '
                                    'to get more information. Lorem ipsum dolor sit amet consectetur adipisicing elit. Exercitationem '
                                    'tempore impedit autem consectetur qui amet Exercitationem tempore impedit autem consectetur qui amet. '
                                    'm tempore impedit autem consectetur qui amet Exercitationem tempore impedit autem consectetur qui amet.',
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                          ],
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.only(left: 120, bottom: 120),
              sliver: SliverToBoxAdapter(
                child: CatalogCarousel(),
              ),
            ),
            CategoryListBar(),
            SliverPadding(
              padding: EdgeInsets.all(15),
              sliver: SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Suggest For You',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '12 product',
                      style: TextStyle(
                        color: Color(0xFF858585),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              sliver: SliverGrid(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  mainAxisSpacing: 18,
                  crossAxisSpacing: 18,
                  maxCrossAxisExtent: 230,
                  childAspectRatio: .67,
                ),
                delegate: SliverChildBuilderDelegate(
                  (ctx, idx) => ProductCard(),
                  childCount: 12,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: LimitedBox(
                maxHeight: size.height,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Explore Article About\nCulture, Art, Tradition',
                          style: TextStyle(
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                          ),
                        ),
                        Text(
                          'tempore impedit autem consectetur qui amet Exercitationem\ntempore impedit autem consectetur qui amet.',
                        ),
                        SizedBox(height: 15),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            primary: Colors.grey,
                            shape: StadiumBorder(),
                            padding: EdgeInsets.symmetric(horizontal: 22),
                          ),
                          child: Text(
                            'Explore It',
                            style: TextStyle(fontSize: 16),
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Image.asset('art.png', width: 320),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.only(bottom: 130),
              sliver: SliverToBoxAdapter(child: Partnership()),
            ),
            SliverToBoxAdapter(child: Footer()),
          ],
        ),
      ),
      smallScreen: Scaffold(
        appBar: AppBar(
          title: Text(
            'Crafity',
            style: TextStyle(
              fontFamily: 'Open Sans',
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.white,
        ),
        floatingActionButton: FloatingBtn(),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 18),
              CatalogCarousel(),
              SizedBox(height: 30),
              Column(
                children: List.generate(
                  2,
                  (idx) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 20, 20, 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Suggest For You',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '12 product',
                              style: TextStyle(
                                color: Color(0xFF858585),
                              ),
                            ),
                          ],
                        ),
                      ),
                      LimitedBox(
                        maxHeight: 320,
                        child: ListView.builder(
                          itemBuilder: (ctx, idx) {
                            return Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: ProductCard(),
                            );
                          },
                          itemExtent: 230,
                          itemCount: 4,
                          scrollDirection: Axis.horizontal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _openLogin() {
    showDialog(
      context: context,
      routeSettings: RouteSettings(name: '/login/'),
      builder: (_) => BlocProvider<UserBloc>(
        create: (_) => UserBloc(context.read<UserRepository>()),
        child: LoginPage(),
      ),
    );
  }
}
