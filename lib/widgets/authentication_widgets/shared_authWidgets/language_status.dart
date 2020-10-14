import 'package:flutter/material.dart';
import '../../../constants.dart';

Widget languageStatus(context) {
  List _lang = [
    'English',
    'Afrikaans',
    'Bahasa Indonesia',
    'Bahasa Melayu',
    'Dansk',
    'Deutsch',
    'English (UK)',
    'Espanol',
    'Espanol (Espana)',
    'Arabic'
  ];
  AlertDialog alertDialog = AlertDialog(
    title: Text(
      'Select your language'.toUpperCase(),
      style: TextStyle(
        fontSize: 19.0,
        fontWeight: FontWeight.w500,
        color: KBlackColor,
      ),
    ),
    content: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 54.0,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(color: KGreyColor, width: 0.5),
              bottom: BorderSide(color: KGreyColor, width: 0.5),
            ),
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              hintStyle: TextStyle(
                fontSize: 18.0,
                color: KGreyColor,
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
              prefixIcon: Icon(
                Icons.search,
                size: 28,
                color: KGreyColor,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: _lang.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 12.0),
                child: Text(
                  _lang[index],
                  style: TextStyle(
                    fontSize: 17.0,
                    color: KBlackColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    ),
  );
  return GestureDetector(
    onTap: () {
      showDialog(
          context: context,
          builder: (context) {
            return alertDialog;
          });
    },
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'English (United States)',
          style: TextStyle(
            color: KGreyColor,
            fontSize: 15.0,
            fontWeight: FontWeight.w400,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 4.0),
          child: Icon(
            Icons.keyboard_arrow_down,
            color: KGreyColor,
          ),
        ),
      ],
    ),
  );
}
