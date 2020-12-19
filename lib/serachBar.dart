import 'dart:math';

import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Material(
        color: Colors.white60,
        elevation: 5.0,
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
        child: Container(
          // width: 300,
          child: TextField(
              style: TextStyle(color: Colors.black, fontSize: 16.0),
              cursorColor: Colors.black12,
              cursorWidth: ln2 * 2,
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 32.0, vertical: 14.0),
                  suffixIcon: Material(
                      color: Colors.white60,
                      elevation: 2.0,
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      child: Icon(
                        Icons.search,
                        color: Colors.black,
                      )),
                  border: InputBorder.none,
                  hintText: "Search Items")),
        ),
      ),
    );
  }
}
