import 'package:flutter/material.dart';
import 'package:shoppings_app/models/Product.dart';
import 'package:shoppings_app/screens/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  final productList = [
    Product(
        "Blazer",
        "https://boutique.humbleandrich.com/wp-content/uploads/2019/04/Kiton-Fall-2019-Menswear-Collection-Featured-Image.jpg",
        120,
        85),
    Product(
        "Suit",
        "https://i.pinimg.com/originals/e4/df/aa/e4dfaaf28c66028d1789917208bdabfd.jpg",
        100,
        50),
    Product(
        "Heals",
        "https://img1.cfcdn.club/71/5c/7110b37aa8b0a0a82fb47dd6e49bf95c_350x350.jpg",
        100,
        50),
    Product("Black suit",
        "https://i.ytimg.com/vi/uD_V8vR2dTQ/maxresdefault.jpg", 100, 50),
    Product(
        "RedHeals",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT-tKZwtQLtKspfIV3q4dgEGMK0ItRmlxuHgg&usqp=CAU",
        100,
        50),
    Product(
        "fashskt",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQYWKKqJ4fvXDWPQ1n4rJCg_lq4YW-rKkTgRg&usqp=CAU",
        120,
        85),
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

class Single_prod extends StatelessWidget {
  final Product product;

  Single_prod(this.product);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: product.name,
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  builder:(context) => new ProductDetails(
                   product: product,
                  ))),
              child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child: ListTile(
                      leading: Text(
                        product.name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      title: Text(
                        "\₹${product.price}",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.w800),
                      ),
                      subtitle: Text(
                        "\₹${product.oldprice}",
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w800,
                            decoration: TextDecoration.lineThrough),
                      ),
                    ),
                  ),
                  child: Image.network(
                    product.Picture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
