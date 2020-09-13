import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/widgets/authentication_widgets/shared_authWidgets/custom_button.dart';
import 'package:instagram/widgets/authentication_widgets/shared_authWidgets/description_title.dart';
import '../../constants.dart';

class SignUpPhoneScreen extends StatelessWidget {
  static String id = 'SignUpPhoneScreen';

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        _phoneTextField(width),
        descriptionTitle(
          'You may receive SMS updates from Instagram and can opt out at any time.',
          EdgeInsets.fromLTRB(30.0, 2.0, 30.0, 8.0),
          12.0,
          0.0,
        ),
        customButton(width, 'Next', context),
      ],
    );
  }

  Widget _phoneTextField(width) {
    return Container(
      height: 48.0,
      width: width - 60.0,
      margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        border: Border.all(color: Colors.grey.shade400, width: 0.8),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 15.0),
        child: Row(
          children: <Widget>[
            Text(
              'EG +20',
              style: TextStyle(
                color: KGreyColor,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              height: 38.0,
              width: 1.0,
              color: KGreyColor,
              margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
            ),
            Expanded(
              child: TextFormField(
                cursorColor: KGreyColor,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Phone',
                  hintStyle: TextStyle(color: KGreyColor, fontSize: 15.0),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
