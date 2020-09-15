import 'package:flutter/material.dart';
import 'package:shoppings_app/models/Category.dart';

class HorizontalList extends StatelessWidget {
  final categoryList = [
    Category('images/cats/tshirt.png', 'shirt'),
    Category('images/cats/dress.png', 'dress'),
    Category('images/cats/jeans.png', 'pants'),
    Category('images/cats/formal.png', 'formal'),
    Category('images/cats/shoe.png', 'shoe'),
    Category('images/cats/accessories.png', 'necklace'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:80.0,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: categoryList.length,
          itemBuilder: (context, index) {
            return Container(
              height:80.0,
              child: SingleCategory(categoryList[index]),
            );
          }),
    );
  }
}

class SingleCategory extends StatelessWidget {
  final Category singlecategory;

  SingleCategory(this.singlecategory);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              singlecategory.imgLocation,
              width: 25.0,
              height: 50.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(
                singlecategory.imgCaption,
                style: new TextStyle(fontSize: 14.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
//
// class HorizontalList extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 80.0,
//       child: ListView(
//         scrollDirection: Axis.horizontal,
//         children: <Widget>[
//           Category(
//             image_location: 'images/cats/tshirt.png',
//             image_cap: 'shirt',
//           ),
//           Category(
//             image_location: 'images/cats/dress.png',
//             image_cap: 'dress',
//           ),
//           Category(
//             image_location: 'images/cats/jeans.png',
//             image_cap: 'pants',
//           ),
//           Category(
//             image_location: 'images/cats/formal.png',
//             image_cap: 'formal',
//           ),
//           Category(
//             image_location: 'images/cats/shoe.png',
//             image_cap: 'shoe',
//           ),
//           Category(
//             image_location: 'images/cats/accessories.png',
//             image_cap: 'necklace',
//           ),
//
//
//         ],
//       ),
//     );
//   }
// }
//
// class Category extends StatelessWidget {
//   final String image_location;
//   final String image_cap;
//
//   Category({this.image_location, this.image_cap});
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(3.0),
//       child: InkWell(
//         onTap: () {},
//         child: Container(
//           width: 100.0,
//           child: ListTile(
//             title: Image.asset(
//               image_location,
//               width: 25.0,
//               height: 50.0,
//             ),
//             subtitle: Container(
//               alignment: Alignment.topCenter,
//               child: Text(image_cap,style: new TextStyle(fontSize: 14.0),),
//
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
