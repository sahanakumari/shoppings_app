import 'package:flutter/material.dart';
import 'package:shoppings_app/models/CartModel.dart';

class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  final cartproducts = [
    CartModel(
      "RedHeals",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT-tKZwtQLtKspfIV3q4dgEGMK0ItRmlxuHgg&usqp=CAU",
      "100",
      "7",
      "Red",
      "1",
    ),

    CartModel(
      "pintskt",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT-AWoRoGYM8IRs4z9uHFjacTMmH6OaBm6dgQ&usqp=CAU",
      "200",
      "M",
      "Pink",
      "1",
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: cartproducts.length,
        itemBuilder: (context, index) {
          // return Padding(
          //   padding: const EdgeInsets.all(0.0),
          //   child: SingleCartProducts(cartproducts[index]),
          // );
          return SingleCartProducts(cartproducts[index]);

        });
  }
}

class SingleCartProducts extends StatelessWidget {
  final CartModel singlecartproducts;

  SingleCartProducts(this.singlecartproducts);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: new Image.network(
          singlecartproducts.picture,
          width: 80.0,
          height: 80.0,
        ),
        title: new Text(singlecartproducts.name),
        subtitle: new Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Text("Size:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    singlecartproducts.size,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                Padding(

                  padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: Text("Color:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    singlecartproducts.color,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),
            new Container(
              alignment: Alignment.topLeft,
              child: Text(
                "\₹${singlecartproducts.price}",
                style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
            ),
          ],
        ),
        trailing: new Column(
          children: <Widget>[
            new IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: () {}),
            //Text(singlecartproducts.quantity),
            //new IconButton(icon: Icon(Icons.arrow_drop_down ), onPressed: (){})
          ],
        ),
      ),
    );
  }

}
