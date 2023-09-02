import 'package:flutter/material.dart';
import 'package:newstore/models/Products.dart';

import '../mytext.dart';
class Card_Product extends StatefulWidget {
 final Products products;
  const Card_Product({required this.products }) ;

  @override
  State<Card_Product> createState() => _Card_ProductState();
}

class _Card_ProductState extends State<Card_Product> {
  String imgurl=                                              "https://tpowep.com/storepanal/storepanal/" ;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 150,
          width: 200,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    blurRadius: 55,
                    color: Colors.grey.withOpacity(0.2),
                    offset: Offset(11, 11),
                    spreadRadius: 0
                )
              ]
          ),
          child: Card(
            elevation: 10,
            color: Colors.white,
            //color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(color: Colors.black, text: widget.products.name.toString().substring(0,15) , size: 18,fontWeight: FontWeight.w500,),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(color: Colors.black, text:widget.products.price.toString()+" " "\$", size: 15),
                    Icon(Icons.favorite,color: Colors.red,)
                  ],
                )

              ],
            ),
          ),
        ),
        Positioned(
            right: 33,
//            bottom: -100,
        top: -100,
            child:
            Image.network(imgurl+widget.products.location.toString(),width: 200,height: 100,)),
      ],
    );
  }
}
