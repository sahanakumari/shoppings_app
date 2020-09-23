
import 'package:flutter/cupertino.dart';
import 'package:shoppings_app/RouteGenerator.dart';
import 'package:shoppings_app/models/Product.dart';

class NavigationController{
  static void pushDetailPage(BuildContext context,Product product){
    Navigator.of(context).pushNamed(
      RouteGenerator.productDetails,
      arguments: product,
    );
  }

  static void pushHome(BuildContext context) {
    Navigator.pushNamed(context, RouteGenerator.homepage);
  }


  static void pushCart(BuildContext context) {
    Navigator.pushNamed(context, RouteGenerator.cartpage);
  }



  static void toHome(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(
    context,
    RouteGenerator.homepage,
    ModalRoute.withName(RouteGenerator.homepage),
    );
  }



}