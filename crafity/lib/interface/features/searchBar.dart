import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  SearchBar({this.popupData, this.otherAction});
  final List<String> popupData;
  final List<Widget> otherAction;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return IntrinsicWidth(
      child: Row(
        children: [
          Flexible(child: searchBar(size)),
          actionBtn(),
        ]..addAll(otherAction ?? []),
      ),
    );
  }

  Widget searchBar(Size size) {
    return Container(
      margin: EdgeInsets.only(right: 15),
      width: 460,
      child: TextFormField(
        decoration: InputDecoration(
          hintStyle: TextStyle(fontSize: 15),
          hintText: 'Search Product !!',
          contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
          suffixIcon: IconButton(
            padding: EdgeInsets.zero,
            icon: Icon(
              Icons.search,
            ),
            onPressed: () {},
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }

  Widget actionBtn() {
    if (popupData == null) {
      return IconButton(
        icon: Icon(Icons.camera),
        onPressed: () {},
        color: Color(0xFF858585),
      );
    }
    return PopupMenuButton(
      icon: Icon(
        Icons.equalizer,
        color: Color(0xFF858585),
      ),
      itemBuilder: (_) {
        return popupData.map((item) {
          return PopupMenuItem(
            child: Text(
              item,
              style: TextStyle(color: Color(0xFF858585)),
            ),
            value: item,
          );
        }).toList();
      },
      // initialValue: initValue,
      onSelected: (value) {},
    );
  }
}
