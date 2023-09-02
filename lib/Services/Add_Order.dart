import 'package:newstore/helper/Api.dart';
import 'package:newstore/models/Products.dart';

class Add_Order{
  Future<Products> addorder(
      String name ,String price,String username ,String img, String id) async {
 Map<String,dynamic> data=  await Api().post(
        url: "https://tpowep.com/storepanal/storepanal/adminApp/add_order.php",
        body: {
          "name":name,
          "img": img,
          "user": username,
          "price":price,
          "productID":id


        },
      );

   return Products.fromJson(data);

  }
}