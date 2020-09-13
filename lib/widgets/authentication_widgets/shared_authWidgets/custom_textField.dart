import 'package:flutter/material.dart';
import 'package:instagram/constants.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final bool secure;

  CustomTextField({@required this.hint, this.secure = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.0,
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 30.0),
      child: TextFormField(
        cursorColor: KGreyColor,
        obscureText: secure,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 2, left: 10.0),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(color: Colors.grey.shade400, width: 0.8),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(color: Colors.grey.shade400, width: 0.8),
          ),
          hintText: hint,
          hintStyle: TextStyle(color: KGreyColor, fontSize: 15.0),
          suffixIcon: hint == 'Password' ? Icon(Icons.remove_red_eye) : null,
        ),
      ),
    );
  }
}
