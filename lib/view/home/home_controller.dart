import 'dart:convert';

import 'package:http/http.dart' as http;

import 'home_model.dart';

class HomeController {
   late Product pro;
   // late Products pros;
   late List product =[];
  bool loading = true;
  Future getProductList() async {
    String url = 'https://nestar-app-default-rtdb.firebaseio.com/products.json';

    http.Response response = await http.get(Uri.parse(url));
    var responseDecoded = json.decode(response.body);
    if (response.statusCode == 200) {
      // for(var x in responseDecoded){
      //   print(x);
      //   product.add(Product.fromJson(x));
      // }
      // product = Product.fromJson(responseDecoded);
      // product = responseDecoded;
      print(responseDecoded);

      product = responseDecoded.map((e) => Product.fromJson(e)).toList();
      return product;
    } else {
      print('error');
    }

  }
}
