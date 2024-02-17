import 'package:flutter/material.dart';

List<Widget> listItems(List<dynamic>? data, BuildContext context) {
  List<Widget> listItems = [];

  data?.forEach((element) {
    final Publisher =
        element.Publisher.toString().split('.').last.toUpperCase();
    listItems.add(ListTile(
      title: Text(element.Title),
      subtitle: Text(Publisher),
      onTap: () {
        print('Tapped');
      },
    ));
  });
  return listItems;
}
