import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:newstore/helper/Api.dart';
import 'package:newstore/models/Products.dart';
class GetAllProducts{
Future  <List<Products>> getAllProducts() async{
   http.Response response=await Api().get(uri: 'https://tpowep.com/storepanal/storepanal/productt.php') ;
   List<dynamic> data=jsonDecode(response.body);
   List<Products> products=[];
   for(int i=0;i<data.length;i++){
     products.add(Products.fromJson(data[i]));

   }
   return products;
  }
}