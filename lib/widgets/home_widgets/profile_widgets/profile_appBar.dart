import 'package:flutter/material.dart';
import '../../../constants.dart';

Widget profileAppBar(String title){
  const _popItem = <String>[
    'Report...',
    'Block',
    'About This Account',
    'Restrict',
    'Hide Your Story',
    'Copy Profile URL',
    'Share This Profile'
  ];
  List<PopupMenuItem<String>> _popUp = _popItem.map((String value) {
    return PopupMenuItem<String>(
      value: value,
      child: Text(value),
    );
  }).toList();

  return AppBar(
    automaticallyImplyLeading: true,
    iconTheme: IconThemeData(color: KBlackColor),
    backgroundColor: KWhiteColor,
    elevation: 0.0,
    titleSpacing: 6.0,
    title: Text(
      title,
      style: TextStyle(
        color: KBlackColor,
        fontSize: 18.0,
        fontWeight: FontWeight.w500,
      ),
    ),
    actions: <Widget>[
      PopupMenuButton(itemBuilder: (context) => _popUp),
    ],
  );
}