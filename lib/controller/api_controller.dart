import 'dart:convert';
import 'dart:developer';

import 'package:api/model/product_model.dart';
import 'package:http/http.dart' as http;

class ApiController {
  fetchProducts() async {
    print('run');
    final response = await http.get(Uri.parse(
        ''));

    if (response.statusCode == 200) {
      log('message');
      List jsonResponse = json.decode(response.body);
      print(jsonResponse);
      return jsonResponse.map((job) => Products.fromJson(job)).toList();
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load Users');
    }
  }
}
