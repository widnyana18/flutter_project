import 'package:flutter/material.dart';

// ignore: must_be_immutable
class IdeaDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Provision',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: provisionData.entries
                .map(
                  (item) => Row(
                    children: [
                      Text(item.key),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: CircleAvatar(
                          backgroundColor: Color(0xFF858585),
                          radius: 2,
                        ),
                      ),
                      Text(item.value),
                    ],
                  ),
                )
                .toList(),
          ),
          SizedBox(height: 16),
          Text(
            'Description',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'met consectetur adipisicing elit. Exercitationem tempore impedit'
            'autem consectetur qui am met consectetur adipisicing elit.'
            'Exercitationem tempor you interest, check details to get more information.'
            'you interest, check details to get more  you interest, check details to get more'
            'ctetur adipisicing elit. Exercitationem tempor you interest, check details to get mo',
          ),
          SizedBox(height: 16),
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

  Map<String, String> provisionData = {
    'Limit Price': '\$10',
    'Target Industry': 'Bali, Indonesia',
    'Industry Type': 'best Owner',
  };

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
