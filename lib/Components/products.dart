import 'package:flutter/material.dart';
import 'package:shoppings_app/screens/product_details.dart';
import 'package:shoppings_app/models/dataproduct.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "https://1099554485.rsc.cdn77.org/upload/products/black_terry_rayon_party_wear_blazer_1566018662as1764385_1.jpg",
      "old_price": 120,
      "price": 85,
    },

    {
      "name": "Suit",
      "picture": "https://www.dhresource.com/0x0s/f2-albu-g7-M01-1D-B3-rBVaSlpWzZiAKNibAAFir2GImjw121.jpg/2018-women-business-pant-suits-3-piece-formal.jpg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Heals",
      "picture": "https://image.shutterstock.com/image-photo/leopard-shoe-red-heal-isolated-260nw-27482185.jpg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Black suit",
      "picture": "https://i.ytimg.com/vi/uD_V8vR2dTQ/maxresdefault.jpg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "RedHeals",
      "picture": "https://img.pngio.com/red-shoes-png-vectors-psd-and-clipart-for-free-download-pngtree-red-shoes-png-260_303.png",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "fashskt",
      "picture": "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQYWKKqJ4fvXDWPQ1n4rJCg_lq4YW-rKkTgRg&usqp=CAU",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "pintskt",
      "picture": "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT-AWoRoGYM8IRs4z9uHFjacTMmH6OaBm6dgQ&usqp=CAU",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "redDress",
      "picture": "https://i.pinimg.com/originals/04/d9/c6/04d9c67a69652389c342e1e8e1f8b607.jpg",
      "old_price": 100,
      "price": 50,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
        new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Single_prod(
              prod_name: product_list[index]['name'],
              prod_pricture: product_list[index]['picture'],
              prod_old_price: product_list[index]['old_price'],
              prod_price: product_list[index]['price'],
            ),
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_pricture;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_pricture,
    this.prod_old_price,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: () =>Navigator.of(context).push(new MaterialPageRoute(builder: (context)=>  new ProductDetails(product_detail_name: prod_name,
              product_detail_new_price: prod_price,
              product_detail_old_price: prod_old_price,
              product_detail_picture: prod_pricture,))),
              child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child: ListTile(
                      leading: Text(
                        prod_name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      title: Text(
                        "\₹$prod_price",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.w800),
                      ),
                      subtitle: Text(
                        "\₹$prod_old_price",
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w800,
                            decoration
                                :TextDecoration.lineThrough),
                      ),
                    ),
                  ),
                  child: Image.network(
                    prod_pricture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}