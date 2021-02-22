import 'package:flutter/material.dart';
import 'package:flutter_bees2biz/src/constants/colors.dart';

class BooksPage extends StatefulWidget {
  BooksPage({Key key}) : super(key: key);

  @override
  _BooksPageState createState() => _BooksPageState();
}

class _BooksPageState extends State<BooksPage> {
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      body: Column(
        children: [
          Container(height: 100, color: colorAmarilloPrimario),
          Container(height: 100, color: colorAzulSecundario),
          Expanded(
            child: Container(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:
                        (orientation == Orientation.portrait) ? 2 : 3),
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                      margin: const EdgeInsets.all(10),
                      child:
                          Container(height: 200, color: colorAmarilloPrimario));
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
