import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  ProductDetails({this.product_detail_name, this.product_detail_new_price,
    this.product_detail_old_price, this.product_detail_picture

  });


  @override
  _ProductDetailsState createState() => _ProductDetailsState();

}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red.shade900,
        title: Text('shopapp'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
      body:new ListView(
        children: <Widget>[

          new Container(
            height:300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_picture),
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: new Text(widget.product_detail_name,
                    style: TextStyle(fontWeight:FontWeight.bold,fontSize: 16.0),),

                  title: new Row(
                    children: <Widget>
                    [
                      Expanded(child: new Text("\₹${widget.product_detail_old_price}",
                      style: TextStyle(color: Colors.grey,decoration: TextDecoration.lineThrough),)),
                      Expanded(child: new Text("\₹${widget.product_detail_new_price}",
                        style: TextStyle(fontWeight:FontWeight.bold,color: Colors.red),)),

                    ],
                  ),
                ),
              ),

            ),
          )
        ],
      )
    );
  }
}
