import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newstore/Main_Widget/mytext.dart';
import 'package:newstore/Main_Widget/widget/Card_Product.dart';
import 'package:newstore/Services/GetAllProducts.dart';
import 'package:newstore/models/Products.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'HomeScreen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: MyText(color: Colors.black, text: 'mhd_shop', size: 22),
          actions: [Icon(FontAwesomeIcons.cartArrowDown)],
        ),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FutureBuilder<List<Products>>(
                future: GetAllProducts().getAllProducts(),
                builder: (context, snapshot) {
                    List<Products> product = snapshot.data!;

                    return GridView.builder(
                        clipBehavior: Clip.none,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 1.6,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 100),
                        itemBuilder: (context, index) {
                          return Card_Product(
                            products: product[index],
                          );
                        });

                })));
  }
}
