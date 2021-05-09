import 'package:flutter/material.dart';

class EventDesc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Requirements',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            'you interest, check details to get more  you interest, check details'
            'to get more ctetur adipisicing elit. Met consectetur adipisicing elit. '
            'Exercitationem tempore impedit autem consectetur qui am met consectetur adipisicing elit.',
          ),
          SizedBox(height: 16),
          Text(
            'Requirements',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 5),
          Text(
            'you interest, check details to get more  you interest, check details'
            'to get more ctetur adipisicing elit. Met consectetur adipisicing elit.',
          ),
          SizedBox(height: 16),
          Text(
            'Reward',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 5),
          Text(
            'to get more ctetur adipisicing elit. Met consectetur adipisicing elit.'
            'Exercitationem tempore impedit autem consectetur qui am met consectetur adipisicing elit.',
          ),
          SizedBox(height: 16),
          Wrap(
            children: List.generate(
              tagProduct.length,
              (idx) => Padding(
                padding: EdgeInsets.only(right: 12),
                child: ActionChip(
                  label: Text(tagProduct[idx].title),
                  onPressed: tagProduct[idx].onTap,
                  shape:
                      StadiumBorder(side: BorderSide(color: Color(0xFF858585))),
                  backgroundColor: Colors.transparent,
                  labelStyle: TextStyle(
                    color: Color(0xFF858585),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

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
