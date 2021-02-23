import 'dart:convert';

import 'package:flutter_bees2biz/src/Books/model/BookModel.dart';
import 'package:http/http.dart' as http;

class ServicesApiBook {
  Future<List<BookModel>> selectBooks() async {
    final url = 'https://api.itbook.store/1.0/new';
    final response = await http.get(url);
    final decodedData = json.decode(response.body);
    final List<dynamic> listaDecoData = decodedData['books'];
    List<BookModel> listTemp = List();
    if (decodedData != null) {
      listaDecoData.forEach((element) {
        final itemTemp = BookModel.fromJson(element);
        listTemp.add(itemTemp);
      });
      return listTemp;
    } else {
      return [];
    }
  }
}

final servicesApiBook = ServicesApiBook();
