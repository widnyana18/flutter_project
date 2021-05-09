import 'package:auto_route/auto_route.dart';
import 'package:crafity/interface/screen/catalog_details/screens/details_body.dart';
import 'package:flutter/material.dart';

class ProductDetailsPage extends StatelessWidget {
  final String prodName;
  ProductDetailsPage({@PathParam('prodName') this.prodName});

  @override
  Widget build(BuildContext context) {
    return DetailsBody(
      detailsDesc: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Size Product',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 6),
          Row(
            children: List.generate(
              sizeProd.length,
              (idx) => Padding(
                padding: EdgeInsets.only(right: 15),
                child: Row(
                  children: [
                    Radio(
                      value: idx,
                      groupValue: 0,
                      onChanged: (val) {},
                      activeColor: Color(0xFFE36789),
                    ),
                    SizedBox(width: 8),
                    Text(
                      sizeProd[idx],
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          Text(
            'Color',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 6),
          Row(
            children: List.generate(
              sizeProd.length,
              (idx) => Padding(
                padding: EdgeInsets.only(right: 12),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: idx == 0
                              ? Color(colorCircle[0])
                              : Colors.transparent),
                    ),
                    child: CircleAvatar(
                      backgroundColor: Color(colorCircle[idx]),
                      radius: 5,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          Text(
            'Description',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 6),
          Text(
            'met consectetur adipisicing elit. Exercitationem tempore impedit'
            'autem consectetur qui am met consectetur adipisicing elit.'
            'Exercitationem tempor you interest, check details to get more information.'
            'you interest, check details to get more  you interest, check details to get more'
            'ctetur adipisicing elit. Exercitationem tempor you interest, check details to get mo',
          ),
          SizedBox(height: 15),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: List.generate(
              tagProduct.length,
              (idx) => ActionChip(
                label: Text(tagProduct[idx].title),
                onPressed: tagProduct[idx].onTap,
                shape:
                    StadiumBorder(side: BorderSide(color: Color(0xFF858585))),
                backgroundColor: Colors.transparent,
                labelStyle: TextStyle(
                  color: Color(0xFF858585),
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<int> colorCircle = [0xFFe76781, 0xFF080F29, 0xFFA5668B];

  List<String> tagData = [
    'awesome',
    'flower',
    'big',
    'minimalism',
  ];

  int _selectedSize = 0;

  List<String> sizeProd = [
    'Big',
    'Medium',
    'Small',
  ];

  List<TagProduct> tagProduct = [
    TagProduct('Hot', onTap: () {}),
    TagProduct('Perfume', onTap: () {}),
    TagProduct('New', onTap: () {}),
    TagProduct('Botle', onTap: () {}),
  ];
}

class TagProduct {
  TagProduct(this.title, {this.onTap});

  final String title;
  final VoidCallback onTap;
}
