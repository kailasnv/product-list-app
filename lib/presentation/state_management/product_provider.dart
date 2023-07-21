import 'dart:convert';

import 'package:db_shop/data/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProductProvider extends ChangeNotifier {
  // list to store products
  List<ProductModel> productList = [];

  Future<void> fetchAllProducts() async {
    // get the Local json file
    final String body = await rootBundle.loadString("assets/JSON/payload.json");

    // parses the string
    final jsonData = json.decode(body);

    // converting json-data to  a model
    for (var eachItem in jsonData["products"]) {
      final model = ProductModel.fromJson(eachItem);
      // adding eachModel-item to the list
      productList.add(model);
    }

    notifyListeners();
  }
}
