import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class BuscadorBooks extends StatefulWidget {
  final double height, width;
  BuscadorBooks(this.height, this.width);

  @override
  _BuscadorBooksState createState() => _BuscadorBooksState();
}

class _BuscadorBooksState extends State<BuscadorBooks> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          height: 100,
          width: 300,
          child: FloatingSearchBar(
            hint: 'Search...',
            maxWidth: 300,
            transition: CircularFloatingSearchBarTransition(),
            builder: (context, transition) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Material(
                  color: Colors.white,
                  elevation: 4.0,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: Colors.accents.map((color) {
                      return Container(height: 112, color: color);
                    }).toList(),
                  ),
                ),
              );
            },
          )),
    );
  }
}
