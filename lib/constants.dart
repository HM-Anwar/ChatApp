import 'package:flutter/material.dart';

abstract class Constants {
  static InputDecoration textFieldDecoration = InputDecoration(
    enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 0)),
    hintStyle: TextStyle(fontFamily: 'SourceSansPro-Regular'),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: BorderSide(color: Colors.blue, width: 2)),
    focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: BorderSide(color: Colors.red, width: 2)),
  );
  static InputDecoration searchTextFieldDecoration = InputDecoration(
    hintStyle: TextStyle(fontFamily: 'SourceSansPro-Regular'),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: BorderSide(color: Colors.blue, width: 2)),
    focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: BorderSide(color: Colors.red, width: 2)),
  );

  static InputDecoration keyboardDecoration = InputDecoration(
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius: BorderRadius.circular(40)),
    fillColor: Colors.grey.shade200,
    filled: true,
    hintText: 'Type your message...',
    contentPadding: EdgeInsets.all(20),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white, width: 2),
        borderRadius: BorderRadius.circular(40)),
    focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red, width: 2),
        borderRadius: BorderRadius.circular(40)),
  );
}
