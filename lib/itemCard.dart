import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SlideShow extends StatefulWidget {
  @override
  _SlideShowState createState() => _SlideShowState();
}

class _SlideShowState extends State<SlideShow> {
  int _current = 0;

  List imgList = [
    'img/shampoo.jpg',
    'img/dairy.jpg',
    'img/biscuit.jpg',
    'img/aata.jpg',
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CarouselSlider(
            options: CarouselOptions(
              height: 250.0,
              initialPage: 0,
              enlargeCenterPage: true,
              autoPlay: true,
              reverse: false,
              autoPlayInterval: Duration(seconds: 2),
              pauseAutoPlayOnTouch: true,
              autoPlayAnimationDuration: Duration(milliseconds: 2000),
              onPageChanged: (index, alt) {
                setState(() {
                  _current = index;
                });
              },
            ),
            items: imgList.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25.0),
                      child: Image.asset(
                        '$i',
                        fit: BoxFit.fill,
                        // width: 300,
                      ),
                    ),
                    // Text(
                    //   'text $i',
                    //   style: TextStyle(fontSize: 16.0),
                    // ),
                  );
                },
              );
            }).toList(),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: map<Widget>(
              imgList,
              (index, url) {
                return Container(
                  width: 10,
                  height: 10,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 2),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index ? Colors.blueAccent : Colors.green,
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Container card(String icon) {
    return Container(
      height: 220,
      padding: EdgeInsets.all(10),
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(80),
      // ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image.asset(icon),
      ),
    );
  }
}

// SingleChildScrollView(
// scrollDirection: Axis.horizontal,
// child: Row(
// children: <Widget>[
// Container(
// child: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.center,
// children: <Widget>[
// CarouselSlider(
// options: CarouselOptions(
// height: 400.0,
// initialPage: 0,
// enlargeCenterPage: true,
// autoPlay: true,
// reverse: false,
// autoPlayInterval: Duration(seconds: 2),
// ),
// items: [1, 2, 3, 4, 5].map((i) {
// return Builder(
// builder: (BuildContext context) {
// return Container(
// width: MediaQuery.of(context).size.width,
// margin: EdgeInsets.symmetric(horizontal: 10.0),
// decoration: BoxDecoration(color: Colors.amber),
// child: Text(
// 'text $i',
// style: TextStyle(fontSize: 16.0),
// ));
// },
// );
// }).toList(),
// ),
// ],
// ),
// ),
// card('img/shampoo.jpg'),
// card('img/dairy.jpg'),
// card('img/biscuit.jpg'),
// card('img/aata.jpg'),
// ],
// ),
// );
