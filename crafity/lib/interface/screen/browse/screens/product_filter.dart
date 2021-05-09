import 'package:crafity/interface/screen/browse/screens/catalog_filter_page.dart';
import 'package:flutter/material.dart';

class ProductFilterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, idx) {
        final List<ItemEntity> entities = itemFilter[idx].entity;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                itemFilter[idx].title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            ExpansionPanelList(
              expandedHeaderPadding: EdgeInsets.zero,
              dividerColor: Colors.transparent,
              children: entities
                  .map(
                    (item) => ExpansionPanel(
                      headerBuilder: (ctx, _) => ListTile(
                        title: Text(
                          item.name,
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      body: Padding(
                        padding: EdgeInsets.only(bottom: 15),
                        child: Wrap(
                          spacing: 15,
                          runSpacing: 15,
                          children:
                              List.generate(item.children.length, (chipIdx) {
                            if (idx == 0 && itemFilter[idx].title == '') {
                              return ChoiceChip(
                                selectedColor: Color(0xFFC84C6E),
                                label: Text(
                                  item.children[chipIdx].label,
                                  style: TextStyle(
                                    color: Color(0xFFEEEEEE),
                                  ),
                                ),
                                shape: StadiumBorder(),
                                backgroundColor: Color(0xFF858585),
                                selected: item.children[chipIdx].selected,
                                onSelected: (_) {},
                              );
                            }
                            return FilterChip(
                              selectedColor: Color(0xFFC84C6E),
                              label: Text(
                                item.children[chipIdx].label,
                                style: TextStyle(
                                  color: Color(0xFFEEEEEE),
                                ),
                              ),
                              shape: StadiumBorder(),
                              backgroundColor: Color(0xFF858585),
                              selected: item.children[chipIdx].selected,
                              onSelected: (_) {},
                            );
                          }),
                        ),
                      ),
                      canTapOnHeader: true,
                      isExpanded: true,
                    ),
                  )
                  .toList(),
            ),
          ],
        );
      },
      itemCount: itemFilter.length,
    );
  }

  List<FilterItemAttribute> itemFilter = [
    FilterItemAttribute(
      title: 'Sort By',
      entity: [
        ItemEntity(
          name: 'Chart',
          children: [
            ChipItem(label: 'TopRated', selected: false),
            ChipItem(label: 'Best Selling', selected: false),
            ChipItem(label: 'producer Choice', selected: false),
            ChipItem(label: 'Most Wanted', selected: false),
            ChipItem(label: 'Best Expensive', selected: false),
          ],
        ),
      ],
    ),
    FilterItemAttribute(
      title: 'Group By',
      entity: [
        ItemEntity(
          name: 'Fine Art',
          children: [
            ChipItem(label: 'Painting', selected: false),
            ChipItem(label: 'Multimedia', selected: false),
            ChipItem(label: 'Statue', selected: false),
            ChipItem(label: 'Graphic', selected: false),
            ChipItem(label: 'Mozaic', selected: false),
            ChipItem(label: 'Calligraphy', selected: false),
            ChipItem(label: 'Photography', selected: false),
            ChipItem(label: 'Relief', selected: false),
            ChipItem(label: 'Carving', selected: false),
          ],
        ),
        ItemEntity(
          name: 'Craft Art',
          children: [
            ChipItem(label: 'Textils', selected: false),
            ChipItem(label: 'Webbing', selected: false),
            ChipItem(label: 'Ceramics', selected: false),
            ChipItem(label: 'Chisel', selected: false),
            ChipItem(label: 'Wood', selected: false),
            ChipItem(label: 'metal', selected: false),
            ChipItem(label: 'Skin Fauna', selected: false),
          ],
        ),
        ItemEntity(
          name: 'Applied Art',
          children: [
            ChipItem(label: 'Custom Home', selected: false),
            ChipItem(label: 'Building Architecture', selected: false),
            ChipItem(label: 'Traditional Weapons', selected: false),
            ChipItem(label: 'Traditional Transport', selected: false),
          ],
        ),
      ],
    ),
  ];
}
