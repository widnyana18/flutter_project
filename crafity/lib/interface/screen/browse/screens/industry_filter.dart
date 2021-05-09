import 'package:crafity/interface/screen/browse/screens/catalog_filter_page.dart';
import 'package:flutter/material.dart';

class IndustryFilterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(18),
      child: Wrap(
        spacing: 15,
        runSpacing: 15,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: List.generate(
          industryFilter.length,
          (idx) {
            final items = industryFilter[idx].dropDownList;
            if (industryFilter[idx].label == null) {
              return DropdownButtonHideUnderline(
                child: DropdownButton(
                  value: 0,
                  icon: Icon(Icons.expand_more),
                  items: List.generate(
                    items.length,
                    (i) => DropdownMenuItem(
                      value: i,
                      child: Text(items[i]),
                    ),
                  ).toList(),
                  onChanged: (idx) {},
                ),
              );
            }

            return FilterChip(
              selectedColor: Color(0xFFC84C6E),
              label: Text(
                industryFilter[idx].label,
                style: TextStyle(
                  color: Color(0xFFEEEEEE),
                ),
              ),
              shape: StadiumBorder(),
              backgroundColor: Color(0xFF858585),
              selected: industryFilter[idx].selected,
              onSelected: (_) {},
            );
          },
        ),
      ),
    );
  }

  List<ChipItem> industryFilter = [
    ChipItem(
      dropDownList: [
        'Country',
        'Indonesia',
        'Japan',
        'India',
        'China',
        'Argentina',
        'Country'
      ],
    ),
    ChipItem(
      dropDownList: ['Found', '2015', '2016', '2017', '2018', '2019', '2020'],
    ),
    ChipItem(label: 'Big Company', selected: false),
    ChipItem(label: 'Product Count', selected: false),
    ChipItem(label: 'Best owner', selected: false),
  ];
}
