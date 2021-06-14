import 'package:flutter/material.dart';

class TextField extends StatelessWidget {
  TextField({@required this.text, @required this.value, @required this.controller});
  final value;
  final text;
  final controller;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300.0,
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return text;
          }
          return null;
        },
        controller: controller,
        textAlign: TextAlign.center,
        onChanged: (value) {
          value = value;
        },
        decoration: kTextFieldDecoration.copyWith(hintText: text),
      ),
    );
  }
}

const kTextFieldDecoration = InputDecoration(
  hintText: 'hintText',
  contentPadding: EdgeInsets.symmetric(
    vertical: 10.0,
    horizontal: 20.0,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(30.0),
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
    borderRadius: BorderRadius.all(
      Radius.circular(30.0),
    ),
  ),
);

class SubmitButton extends StatelessWidget {
  SubmitButton(
      {@required this.colour, @required this.onPress, @required this.text});
  final colour;
  final onPress;
  final text;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: colour,
      borderRadius: BorderRadius.circular(30.0),
      elevation: 5.0,
      child: MaterialButton(
        onPressed: onPress,
        minWidth: 200,
        height: 40.0,
        child: Text(
          text,
          style: kOnpressTextStyle,
        ),
      ),
    );
  }
}

const kOnpressTextStyle = TextStyle(
  fontSize: 18.0,
  color: Colors.white,
  fontWeight: FontWeight.w300,
  letterSpacing: 1.0,
);
