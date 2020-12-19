import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kirana_kinara/bottomBar.dart';

int totalItems = 0;
var totalPrice = 0;

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Back to Home"),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            CartCard('img/aata.jpg'),
            CartCard('img/Rusk.jpg'),
            calculationCart(),
            // SizedBox(height: 20),
            Container(
              // color: Colors.orange,
              child: OutlineButton(
                color: Colors.orange,
                splashColor: Colors.tealAccent,
                highlightColor: Colors.blueAccent,
                onPressed: () {
                  print('Order Booked');
                },
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Text('Book the Order'),
              ),
            ),
          ],
        ),
        // CartCard(),
        // CartCard(),
      ),

      bottomNavigationBar: BottomBar(),
      // bottomNavigationBar: BottomAppBar(),
    );
  }

  Container calculationCart() {
    return Container(
      // padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(20),
      child: Row(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Total Amount'),
              SizedBox(
                height: 10,
              ),
              Text('Total Products'),
            ],
          ),
          Flexible(
            fit: FlexFit.tight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  totalPrice.toString().padLeft(2, "0"),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  totalItems.toString().padLeft(2, "0"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CartCard extends StatefulWidget {
  var _img;
  CartCard(this._img);

  @override
  _CartCardState createState() => _CartCardState();
}

class _CartCardState extends State<CartCard> {
  int numOfItems = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white60,
        borderRadius: BorderRadius.circular(10),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                    child: Image.asset(widget._img),
                    height: 120,
                    margin: EdgeInsets.only(left: 20, top: 10)),
                SizedBox(
                  width: 20,
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Product Name'),
                    Text(
                      'Price',
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
              width: 20,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 15,
                ),
                buildOutlineButton(
                    icon: Icons.remove,
                    press: () {
                      if (numOfItems > 0) {
                        setState(() {
                          numOfItems--;
                          totalItems--;
                        });
                      }
                    }),
                // Text('01'),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    // if our item is less than 10 then it shows 01 02 like that
                    numOfItems.toString().padLeft(2, "0"),
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                buildOutlineButton(
                    icon: Icons.add,
                    press: () {
                      setState(() {
                        numOfItems++;
                        totalItems++;
                      });
                    }),
                // Icon(Icons.add),
                SizedBox(
                  width: 30,
                ),
                buildOutlineButton(
                    icon: Icons.delete_forever,
                    press: () {
                      setState(() {
                        totalItems = totalItems - numOfItems;
                        numOfItems = 0;
                      });
                    }),
                // Icon(Icons.delete_forever),
                Text(
                  'Remove from Cart',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  SizedBox buildOutlineButton({IconData icon, Function press}) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlineButton(
        onPressed: press,
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13),
        ),
        child: Icon(icon),
      ),
    );
  }
}
