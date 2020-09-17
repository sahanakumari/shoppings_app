import 'package:flutter/material.dart';
import 'package:shoppings_app/models/Product.dart';
import 'package:shoppings_app/screens/Cart.dart';
import 'package:shoppings_app/screens/HomePage.dart';
import 'package:shoppings_app/screens/ProdutDetails.dart';
import 'package:shoppings_app/Components/Products.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/home':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/cart':
        return MaterialPageRoute(builder: (_)=>Cart());

      // case'/similarproduct':
      //   //return MaterialPageRoute(builder: (_)=>ProductDetails());
      //   if (args is Simlar_Single_prod)
      //     {
      //       return MaterialPageRoute(builder: (_)=>ProductDetails(Product: Product),);
      //     }
      //   return _errorRoute();

      case '/productdetails':
       // return MaterialPageRoute(builder: (_) => ProductDetails());
        if (args is ProductDetails) {

          return MaterialPageRoute(builder: (_) => ProductDetails(
            Product: Product),
          );
        }

        return _errorRoute();
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
