import 'package:auto_route/auto_route.dart';
import 'package:crafity/application/authentication/authentication_bloc.dart';
import 'package:crafity/interface/features/widgets.dart';
import 'package:crafity/interface/router/router.gr.dart';
import 'package:crafity/interface/screen/home/widgets/catalog_bg_clipper.dart';
import 'package:flutter/material.dart';
import 'package:crafity/interface/util/responsiveLayout.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CatalogCarousel extends StatefulWidget {
  @override
  _CatalogCarouselState createState() => _CatalogCarouselState();
}

class _CatalogCarouselState extends State<CatalogCarousel> {
  ScrollController _imgController = ScrollController();
  ScrollController _iconController = ScrollController();
  int index = 0;
  dynamic initValue;

  // void _next() {
  //   final media = MediaQuery.of(context).size;
  //   final responsive = ResponsiveLayout.isSmallScreen(context);

  //   setState(() {
  //     _imgController.animateTo(
  //         responsive
  //             ? _imgController.offset + media.width
  //             : _imgController.offset + media.height * .7,
  //         duration: Duration(milliseconds: 500),
  //         curve: Curves.easeIn);
  //     if (_imgController.offset >= _imgController.position.maxScrollExtent &&
  //         !_imgController.position.outOfRange) {
  //       _imgController.animateTo(0,
  //           duration: Duration(milliseconds: 500), curve: Curves.easeIn);
  //     }
  //     index = index < dataList.length - 1 ? index + 1 : 0;
  //   });
  // }

  // void _prev() {
  //   final media = MediaQuery.of(context).size;
  //   final responsive = ResponsiveLayout.isSmallScreen(context);

  //   setState(() {
  //     _imgController.animateTo(
  //         responsive
  //             ? _imgController.offset - media.width
  //             : _imgController.offset - media.height * .69,
  //         duration: Duration(milliseconds: 500),
  //         curve: Curves.easeIn);
  //     if (_imgController.offset <= 0 && !_imgController.position.outOfRange) {
  //       _imgController.animateTo(
  //           _imgController.offset + _imgController.position.maxScrollExtent,
  //           duration: Duration(milliseconds: 500),
  //           curve: Curves.easeIn);
  //     }
  //     index = index > 0 ? index - 1 : dataList.length - 1;
  //   });
  // }

  // @override
  // void dispose() {
  //   _imgController.dispose();
  //   _iconController.dispose();
  //   super.dispose();
  // }

  Widget productLabel() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          dataList[index].title,
          style: TextStyle(
            fontFamily: 'Open Sans',
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          children: <Widget>[
            Text(
              dataList[index].company,
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF858585),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 2,
              ),
            ),
            Text(
              dataList[index].rate,
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF858585),
              ),
            ),
            Icon(Icons.star, color: Color(0xFF858585), size: 15),
          ],
        ),
        SizedBox(height: 10),
        BlocBuilder<AuthenticationBloc, AuthenticationState>(
          builder: (context, state) => state.maybeWhen(
            authenticated: (_) => Row(
              children: <Widget>[
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF858585),
                    padding: EdgeInsets.symmetric(horizontal: 22),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Buy \$${dataList[index].price}',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                PopupMenuButton(
                  icon: Icon(
                    Icons.expand_more,
                    color: Color(0xFF858585),
                  ),
                  itemBuilder: (_) {
                    return prodEventItem.map((item) {
                      return PopupMenuItem(
                        child: Text(
                          item,
                          style: TextStyle(color: Color(0xFF858585)),
                        ),
                        value: prodEventItem.indexOf(item),
                      );
                    }).toList();
                  },
                  initialValue: 0,
                  onSelected: (int value) {},
                ),
              ],
            ),
            unauthenticated: () => SizedBox.shrink(),
            orElse: () => null,
          ),
        ),
        SizedBox(height: 10),
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: <Widget>[
            TagButton(
              label: 'HOT',
              color: Color(0xFFF66C6C),
            ),
            TagButton(
              label: 'NEW',
              color: Color(0xFF8174F2),
            ),
          ],
        )
      ],
    );
  }

  List<String> prodEventItem = [
    'Share',
    'Bookmark',
    'Report',
    'Not Interested'
  ];

  Widget carouselProduct() {
    return PageView.builder(
      itemCount: dataList.length,
      itemBuilder: (ctx, idx) => InkWell(
        onTap: () {
          context.router.root.push(ProductDetailsRoute(prodName: 'mural_coi'));
        },
        child: PngProduct(imageSrc: dataList[idx].image),
      ),
    );
  }

  Widget productQueue() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: dataList.length,
      itemExtent: 60,
      reverse: true,
      itemBuilder: (ctx, idx) => InkWell(
        onTap: () {},
        child: Container(
          margin: EdgeInsets.only(right: 12),
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(dataList[idx].color1),
                Color(dataList[idx].color2)
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: AssetImage(dataList[idx].image),
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Adsense',
          style: TextStyle(
            fontFamily: 'Raleway',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 15),
        ResponsiveLayout(
          largeScreen: AspectRatio(
            aspectRatio: 2,
            child: Row(
              children: [
                Spacer(),
                Flexible(flex: 2, child: productLabel()),
                Spacer(),
                Flexible(
                  flex: 5,
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      ClipPath(
                        clipper: CatalogBgClipper(),
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(dataList[index].color1),
                                Color(dataList[index].color2),
                              ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                          ),
                        ),
                      ),
                      carouselProduct(),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        height: 55,
                        width: size.width * .4,
                        child: productQueue(),
                      ),
                    ],
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
          smallScreen: AspectRatio(
            aspectRatio: .7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      ClipPath(
                        clipper: CatalogBgClipper(),
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(dataList[index].color1),
                                Color(dataList[index].color2),
                              ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                          ),
                        ),
                      ),
                      carouselProduct(),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        height: 55,
                        width: size.width,
                        child: productQueue(),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: productLabel(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  List<ProductCardAtribute> dataList = [
    ProductCardAtribute(
      image: 'assets/perfume11.png',
      title: 'Sabrut',
      company: 'Kencana Luhur Pt',
      price: '50',
      rate: '6.6',
      time: '02/2019',
      color1: 0xFFD3BCC0,
      color2: 0xFFA5668B,
    ),
    ProductCardAtribute(
      image: 'assets/perfume11.png',
      title: 'Skinn',
      company: 'Rose D Lay',
      price: '34',
      rate: '6.6',
      time: '02/2019',
      color1: 0xFFe76781,
      color2: 0xFFC80058,
    ),
    ProductCardAtribute(
      image: 'assets/perfume11.png',
      title: 'Bleu De Chanel',
      company: 'Bromdown Silicon',
      price: '29',
      rate: '6.6',
      time: '02/2019',
      color1: 0xFF002775,
      color2: 0xFF080F29,
    ),
  ];
}

class ProductCardAtribute {
  final String image;
  final String title;
  final String company;
  final String price;
  final String rate;
  final String time;
  final int color1;
  final int color2;

  ProductCardAtribute({
    this.image,
    this.title,
    this.company,
    this.price,
    this.rate,
    this.time,
    this.color1,
    this.color2,
  });
}
