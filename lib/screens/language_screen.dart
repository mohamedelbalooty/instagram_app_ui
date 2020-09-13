import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class LanguageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'select your language'.toUpperCase(),
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              height: 0.5,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(vertical: 5.0),
              color: KGreyColor,
            ),
            TextField(
              decoration: InputDecoration(
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: KGreyColor, width: 0.5),
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: KGreyColor,
                    size: 30.0,
                  ),
                  hintText: 'Search'),
            ),
          ],
        ),
      ),
    );
  }
}
