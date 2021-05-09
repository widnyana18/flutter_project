import 'package:auto_route/auto_route.dart';
import 'package:crafity/interface/screen/catalog_details/screens/details_body.dart';
import 'package:flutter/material.dart';

class CollectionDetailsPage extends StatelessWidget {
  final String collName;
  CollectionDetailsPage({@PathParam('collName') this.collName});

  @override
  Widget build(BuildContext context) {
    return DetailsBody(
      detailsDesc: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Product Details',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Color(0xFF858585),
            ),
          ),
          SizedBox(height: 6),
          Text(
            'Marina Newvise',
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Text(
                '8.2',
                style: TextStyle(color: Color(0xFF858585)),
              ),
              Icon(Icons.star, size: 16, color: Color(0xFF858585)),
              Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 8),
                child: CircleAvatar(
                  backgroundColor: Color(0xFF858585),
                  radius: 3,
                ),
              ),
              Text(
                '2 items',
                style: TextStyle(color: Color(0xFFE36789)),
              ),
            ],
          ),
          SizedBox(height: 15),
          Text(
            'Description',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 6),
          Text(
            'met consectetur adipisicing elit. Exercitationem tempore impedit '
            'autem consectetur qui am met consectetur adipisicing elit. '
            'Exercitationem tempor you interest, check details to get more information. '
            'you interest, check details to get more  you interest, check details to get more '
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

  List<TagCollection> tagProduct = [
    TagCollection('Hot', onTap: () {}),
    TagCollection('Perfume', onTap: () {}),
    TagCollection('New', onTap: () {}),
    TagCollection('Botle', onTap: () {}),
  ];
}

class TagCollection {
  TagCollection(this.title, {this.onTap});

  final String title;
  final VoidCallback onTap;
}
