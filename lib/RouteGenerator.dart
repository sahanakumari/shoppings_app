import 'package:flutter/material.dart';
import 'package:shoppings_app/models/Product.dart';
import 'package:shoppings_app/screens/Cart.dart';
import 'package:shoppings_app/screens/HomePage.dart';
import 'package:shoppings_app/screens/ProdutDetails.dart';
import 'package:shoppings_app/Components/Products.dart';

class RouteGenerator {
  static const productDetails= '/Productdetails';
  static const homepage='/home';
  static const cartpage='/cart';
  static Route<dynamic> generateRoute(RouteSettings settings) {

    final args = settings.arguments;


    switch (settings.name) {
      case homepage:
        return MaterialPageRoute(builder: (_) => HomePage());
      case cartpage:
        return MaterialPageRoute(builder: (_)=>Cart());

      case productDetails:

        {
          return MaterialPageRoute(builder: (_) => ProductDetails(product: args),
          );
        }


      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('Error'),
        ),
      );
    });
  }
}
