import 'package:flutter/material.dart';
import 'package:shoppings_app/models/CartModel.dart';
import 'package:shoppings_app/models/Product.dart';

class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  final cartproducts = [
    CartModel(
      Product("Blazer","https://boutique.humbleandrich.com/wp-content/uploads/2019/04/Kiton-Fall-2019-Menswear-Collection-Featured-Image.jpg",0, 100),
      "7",
      "Red",
      "1",
    ),

    CartModel(
     Product("Suit","https://i.pinimg.com/originals/e4/df/aa/e4dfaaf28c66028d1789917208bdabfd.jpg",0,100),

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
          singlecartproducts.product.Picture,
          width: 80.0,
          height: 80.0,
        ),
        title: new Text(singlecartproducts.product.name),
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
                "\₹${singlecartproducts.product.price}",
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
