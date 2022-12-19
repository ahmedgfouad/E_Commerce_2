import 'dart:convert';

import 'package:e_commerce_2/network/models/list/list.dart';
import 'package:http/http.dart' as http;

class ListAPI {
  Future<MainList> getApiDate() async {
    final http.Response request = await http.get(
        Uri.https('asos2.p.rapidapi.com','/products/v2/list',
          {
            "store": 'US',
            "offset": '0',
            "categoryId": '4208',
            "limit": '48',
            "country": 'US',
            "sort": 'freshness',
            "currency": 'USD',
            "sizeSchema": 'US',
            "lang": 'en-US'
          },
        ),
        headers: {
          'X-RapidAPI-Key':
              'dd605b2e34mshca6bd8c0a71c558p1af5f4jsnadeb6f2dbb2e',
          'X-RapidAPI-Host': 'asos2.p.rapidapi.com'
        });
    if (request.statusCode < 210 && request.statusCode >= 200) {
      final Map<String, dynamic> jsonBody = jsonDecode(request.body);
      MainList mainList = MainList.fromMap(jsonBody);
      return mainList;
    } else {
      throw ("RequestFailure" + request.body);
    }
  }
}
