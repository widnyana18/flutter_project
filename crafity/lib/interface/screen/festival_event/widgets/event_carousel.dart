import 'package:auto_route/auto_route.dart';
import 'package:crafity/interface/router/router.gr.dart';
import 'package:crafity/interface/util/responsiveLayout.dart';
import 'package:flutter/material.dart';

class EventCarousel extends StatefulWidget {
  @override
  _EventCarouselState createState() => _EventCarouselState();
}

class _EventCarouselState extends State<EventCarousel> {
  @override
  Widget build(BuildContext context) {
    var isLarge = ResponsiveLayout.isLargeScreen(context);
    var size = MediaQuery.of(context).size.height;

    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        AspectRatio(
          aspectRatio: 2,
          child: PageView.builder(
            itemCount: carouselItem(context).length,
            itemBuilder: (_, idx) {
              return GestureDetector(
                onTap: _onPageSelected,
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(carouselItem(context)[idx].image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF532640).withOpacity(.2),
                            Color(0xFF532640)
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 1.15,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            carouselItem(context)[idx].title,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Open Sans',
                              color: Colors.white,
                              fontSize: isLarge ? 50 : 20,
                            ),
                          ),
                          SizedBox(height: 12),
                          Text(
                            carouselItem(context)[idx].subTitle,
                            softWrap: true,
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        Positioned(
          bottom: 14,
          child: Row(
            children: List.generate(
              3,
              (idx) => Padding(
                padding: EdgeInsets.symmetric(horizontal: 3),
                child: CircleAvatar(
                  backgroundColor: Color(0xFFCFCFCF).withOpacity(.5),
                  radius: 5,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _onPageSelected() {
    context.router.root.push(EventDetailsRoute(eventName: 'ruin_minarck'));
  }

  List<CarouselItem> carouselItem(BuildContext context) {
    return [
      CarouselItem(
        'Best Collection',
        subTitle:
            'Lorem ipsum dolor sit amet consectetur adipisicing elit. Exer autem consectetur qui amet.',
        image: 'perfume9.jpg',
      ),
      CarouselItem(
        'Big Sell',
        subTitle:
            'Lorem ipsum dolor sit amet consectetur adipisicing elit. Exer autem consectetur qui amet.',
        image: 'perfume9.jpg',
      ),
      CarouselItem(
        'Young Beauty',
        subTitle:
            'Lorem ipsum dolor sit amet consectetur adipisicing elit. Exer autem consectetur qui amet.',
        image: 'perfume9.jpg',
      ),
    ];
  }
}

class CarouselItem {
  CarouselItem(
    this.title, {
    this.subTitle,
    this.image,
  });

  final String image;
  final String title;
  final String subTitle;
}
