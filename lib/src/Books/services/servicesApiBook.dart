import 'package:flutter_bees2biz/src/Books/model/BookModel.dart';
import 'package:http/http.dart' as http;

class ServicesApiBook {
  Future<BookModel> selectBooks() async {
    final url = 'https://api.itbook.store/1.0/new';
    final response = await http.get(url);

    print(response.body);

    return null;
  }
}
