import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bees2biz/src/Books/model/BookModel.dart';
import 'package:flutter_bees2biz/src/Books/services/servicesApiBook.dart';
import 'package:flutter_bees2biz/src/Books/views/widgets/buscadorBooks.dart';
import 'package:flutter_bees2biz/src/Books/views/widgets/logoBooks.dart';
import 'package:flutter_bees2biz/src/Books/views/widgets/itemBook.dart';
import 'package:flutter_bees2biz/src/Books/views/InfoBook.dart';
import 'package:flutter_bees2biz/src/constants/colors.dart';

class BooksPage extends StatefulWidget {
  BooksPage({Key key}) : super(key: key);

  @override
  _BooksPageState createState() => _BooksPageState();
}

class _BooksPageState extends State<BooksPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: colorAzulPrimario,
      body: SafeArea(
        top: true,
        child: Column(
          children: [
            LogoBook(size.height / 6, size.width),
            Card(
              color: colorBlanco,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextField(
                  decoration: InputDecoration(
                      filled: false,
                      hintText: 'Buscar . . .',
                      suffixIcon: Icon(Icons.search)),
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(bottom: 50),
                child: FutureBuilder(
                    future: servicesApiBook.selectBooks(),
                    builder: (context, AsyncSnapshot<List<BookModel>> list) {
                      if (list.hasData) {
                        return GridView.builder(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 20,
                              crossAxisSpacing: 20,
                              childAspectRatio: 0.75,
                            ),
                            itemCount: list.data.length,
                            itemBuilder: (context, index) {
                              final item = list.data[index];
                              return ItemCard(
                                bookModel: item,
                                funtion: () => Navigator.of(context).push(
                                    CupertinoPageRoute(
                                        builder: (context) =>
                                            InfoBook(list.data[index]))),
                              );
                            });
                      } else {
                        return Center(child: CircularProgressIndicator());
                      }
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
