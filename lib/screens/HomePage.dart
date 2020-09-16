import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:shoppings_app/Components/horizontal_listview.dart';
import 'package:shoppings_app/Components/products.dart';
import 'package:shoppings_app/screens/Cart.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/w1.jpeg'),
          AssetImage('images/w3.jpeg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/c1.jpg'),
          AssetImage('images/w4.jpeg'),
          AssetImage('images/m2.jpg'),
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 2.0,
        dotBgColor: Colors.transparent,
      ),
    );

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
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new Cart()));
              })
        ],
      ),
      drawer: new Drawer(
        child: new Column(
          children: <Widget>[
//            header
            new UserAccountsDrawerHeader(
              accountName: Text('Sahana kumari'),
              accountEmail: Text('sahanakumari501@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: new BoxDecoration(color: Colors.red.shade900),
      ),

//            body



      Expanded(
        child: ListView(
          children: <Widget>[

              MenuOption(
              label: 'Home',
              icon: Icons.home,
              ontap: () {},
            ),
              MenuOption(
                label: 'My Account',
                icon: Icons.person,

                ontap: () {},
              ),

              MenuOption(
                label: 'My Orders',
                icon: Icons.shopping_basket,
                ontap: () {},
              ),



              MenuOption(
                label: 'Shopping Cart',
                icon: Icons.shopping_cart,
                ontap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) => new Cart()));
                },
              ),


              MenuOption(
                label: 'Settings',
                icon: Icons.settings,
                ontap: () {},
              ),

              MenuOption(
                label: 'About',
                icon: Icons.help,
                ontap: () {},
              ),
            ],
        ),
      ),

            Divider(),

            MenuOption(
              label: 'Log Out',
              icon: Icons.transit_enterexit,
              //color: Colors.green,
              ontap: () {},
            ),
          ],
        ),
      ),
      body: new Column(
        children: <Widget>[
          //image carousel begins here
          image_carousel,

          //padding widget
          new Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
                alignment: Alignment.centerLeft, child: new Text('Categories')),
          ),

          //Horizontal list view begins here
          HorizontalList(),

          //padding widget
          new Padding(
            padding: const EdgeInsets.all(6.0),
            child: Container(
                alignment: Alignment.centerLeft,
                child: new Text('Recent products')),
          ),

          //grid view
          Flexible(child: Products()),
        ],
      ),
    );
  }
}

class MenuOption extends StatelessWidget {
  final String label;
  final void Function() ontap;
  final  IconData icon;



  MenuOption({@required this.label, @required this.ontap, @required this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: ListTile(
          title: Text(label),
          leading: Icon(
            icon,
            color: Colors.blue,
          )
      ),

    );



  }
}
