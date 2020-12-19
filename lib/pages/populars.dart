import 'package:flutter/material.dart';
import 'package:kirana_kinara/bottomBar.dart';
import 'package:kirana_kinara/sideMenu/sideMenu.dart';

class Populars extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFFDEDEE0),
        scaffoldBackgroundColor: Color(0xFFDEDEE0),
      ),
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xFFDEDEE0),
          appBar: AppBar(
            title: Text('Welcome to Flutter'),
            backgroundColor: Color(0xFFDEDEE0),
          ),
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            // FirstRow(),
          ),
          bottomNavigationBar: BottomBar(),
          drawer: SideMenu(),
        ),
      ),
    );
  }
}
