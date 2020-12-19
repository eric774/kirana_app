import 'package:flutter/material.dart';

class CategoryCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7),
      // scrollDirection: Axis.horizontal,
      child: Wrap(
        children: <Widget>[
          categoryCard('img/shampoo.jpg', 'Shampoos'),
          categoryCard('img/dairy.jpg', 'Dairy Products'),
          categoryCard('img/biscuit.jpg', 'Biscuit & Cookies'),
          categoryCard('img/aata.jpg', 'Aata & Flours'),
        ],
      ),
    );
  }

  Container categoryCard(String icon, String itemName) {
    return Container(
      // height: 150,
      // padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(7),
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(80),
      // ),
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
              icon,
              height: 140,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            itemName,
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}

///categories list:
///daal, shampoo, oil, dairy, snacks, noodles, buscuits, flours, tea
///bath, toothpastes, cleaners, beverages, juice, dry fruit, spices, sweets
///others
