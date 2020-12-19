import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kirana_kinara/itemCard.dart';
import 'sideMenu/sideMenu.dart';
import 'firstRow.dart';
import 'bottomBar.dart';
import 'serachBar.dart';
import 'heading.dart';
import 'categories.dart';

void main() => runApp(Kirana());

class Kirana extends StatelessWidget {
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
          // appBar: AppBar(
          //   title: Text('Welcome to Flutter'),
          //   backgroundColor: Color(0xFFDEDEE0),
          // ),
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView(
              children: <Widget>[
                FirstRow(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Flexible(
                      child: SearchField(),
                    ),
                  ],
                ), //searchbar
                Heading('New Arrivals:'),
                SlideShow(),
                Heading(
                  'Popular this week:',
                ),
                SlideShow(),
                // Heading('Categories:'),
                Text(
                  'Categories:',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                ),
                CategoryCards(),
                SizedBox(
                  height: 20,
                  width: 20,
                ),
                Text('Ads:'),
                Image.asset(
                  'img/ad_main.jpg',
                  // scale: 0.1,
                  height: 120,
                  fit: BoxFit.fill,
                ),
                SizedBox(height: 5),
                Image.asset(
                  'img/ad3.jpg',
                  // scale: 0.1,
                  height: 120,
                  fit: BoxFit.fill,
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomBar(),
          drawer: SideMenu(),
        ),
      ),
    );
  }
}

//TODO: login page
//TODO: item cards
//TODO: favorites page
//TODO: Seperate pages all over
//TODO: reformating & code cleaning
//TODO: linking to respective pages and then only specified functionalities remain
