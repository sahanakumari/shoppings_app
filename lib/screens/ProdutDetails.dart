
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoppings_app/models/CartModel.dart';
import 'package:shoppings_app/models/Product.dart';
import 'package:shoppings_app/screens/HomePage.dart';
import 'package:shoppings_app/Components/Products.dart';

import '../Navigation_Controller.dart';

class ProductDetails extends StatefulWidget {
 final Product product;

  const ProductDetails({Key key,  this.product,}) : super(key: key);



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
          title: InkWell(
            // onTap: () {
            //   Navigator.push(context,
            //       MaterialPageRoute(builder: (context) => new HomePage()));
            // },
           // onTap: ()=> Navigator.of(context).pushNamed('/home'),
            child: Text("Products"),
          ),

          actions: <Widget>[
            new IconButton(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
              onPressed:()=> NavigationController.pushHome(context),),
            new IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: () {}),
          ],
        ),
        body: new SingleChildScrollView(
          child: Column(
            children: <Widget>[
              new Container(
                height: 300.0,
                child: GridTile(
                  child: Container(
                    color: Colors.white,
                    child: Image.network(widget.product.Picture),
                  ),
                  footer: new Container(
                    color: Colors.white70,
                    child: ListTile(
                      leading: new Text(
                        widget.product.name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0),
                      ),
                      title: new Row(
                        children: <Widget>[
                          Expanded(
                              child: new Text(
                            "\₹${widget.product.oldprice}",
                            style: TextStyle(
                                color: Colors.grey,
                                decoration: TextDecoration.lineThrough),
                          )),
                          Expanded(
                              child: new Text(
                            "\₹${widget.product.price}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.red),
                          )),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      child: MaterialButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Size"),
                              content: Text("Choose the size"),
                              actions: <Widget>[
                                MaterialButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(context);
                                  },
                                  child: Text("Close"),
                                )
                              ],
                            );
                          });
                    },
                    color: Colors.white,
                    textColor: Colors.grey,
                    elevation: 0.2,
                    child: Row(
                      children: <Widget>[
                        Expanded(child: Text("Size")),
                        Expanded(child: Icon(Icons.arrow_drop_down)),
                      ],
                    ),
                  )),
                  Expanded(
                      child: MaterialButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Colors"),
                              content: Text("Choose a color"),
                              actions: <Widget>[
                                MaterialButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(context);
                                  },
                                  child: Text("Close"),
                                )
                              ],
                            );
                          });
                    },
                    color: Colors.white,
                    textColor: Colors.grey,
                    elevation: 0.2,
                    child: Row(
                      children: <Widget>[
                        Expanded(child: Text("Color")),
                        Expanded(child: Icon(Icons.arrow_drop_down)),
                      ],
                    ),
                  )),
                  Expanded(
                      child: MaterialButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Quantity"),
                              content: Text("Choose the quantity"),
                              actions: <Widget>[
                                MaterialButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(context);
                                  },
                                  child: Text("Close"),
                                )
                              ],
                            );
                          });
                    },
                    color: Colors.white,
                    textColor: Colors.grey,
                    elevation: 0.2,
                    child: Row(
                      children: <Widget>[
                        Expanded(child: Text("Qty")),
                        Expanded(child: Icon(Icons.arrow_drop_down)),
                      ],
                    ),
                  )),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: MaterialButton(
                      onPressed: () {},
                      color: Colors.red,
                      textColor: Colors.white,
                      elevation: 0.2,
                      child: Text("Buy now"),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.add_shopping_cart),
                    color: Colors.red,
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.favorite_border),
                    color: Colors.red,
                    onPressed: () {},
                  ),
                ],
              ),
              Divider(),
              ListTile(
                title: Text("Product Description"),
                subtitle: Text(
                    "Make A Style Statement This Season With This Blazer From Generic.Wear It Over A Shift Dress And A Classic Tote To Complete Your Look Make A Style Statement This Season With This Blazer From Generic.Wear It Over A Shift Dress And A Classic Tote To Complete Your Look Make A Style Statement This Season With This Blazer From Generic.Wear It Over A Shift Dress And A Classic Tote To Complete Your Look."),
              ),
              Divider(),
              new Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                    child: Text(
                      "Product name",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(widget.product.name),
                  )
                ],
              ),
              new Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                    child: Text(
                      "Product brand",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text("Branded"),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                    child: Text(
                      "Product condition",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text("NEW"),
                  )
                ],
              ),
              Divider(),
              Padding
                (padding: const EdgeInsets.all(4.0),

               child: Text("Similar Products", ),
              ),


              Container(
                height: 340.0,
                child: SimilarProducts(),


              )
            ],
          ),
        ));
  }
}

class SimilarProducts extends StatefulWidget {
  @override
  _SimilarProductsState createState() => _SimilarProductsState();
}

class _SimilarProductsState extends State<SimilarProducts> {
  final productList = [
    Product(
        "Heals",
        "https://img1.cfcdn.club/71/5c/7110b37aa8b0a0a82fb47dd6e49bf95c_350x350.jpg",
        100,
        50),
    Product("Black suit",
        "https://i.ytimg.com/vi/uD_V8vR2dTQ/maxresdefault.jpg", 100, 50),
    Product(
        "pintskt",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT-AWoRoGYM8IRs4z9uHFjacTMmH6OaBm6dgQ&usqp=CAU",
        100,
        85),
    Product(
        "redDress",
        "https://i.pinimg.com/originals/04/d9/c6/04d9c67a69652389c342e1e8e1f8b607.jpg",
        120,
        85),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: productList.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Single_prod(productList[index]),
          );
        });
  }
}


