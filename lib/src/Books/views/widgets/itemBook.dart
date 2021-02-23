import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bees2biz/src/Books/model/BookModel.dart';
import 'package:flutter_bees2biz/src/constants/colors.dart';
import 'package:flutter_bees2biz/src/constants/images.dart';
import 'package:flutter_bees2biz/src/constants/styles.dart';

class ItemCard extends StatefulWidget {
  final BookModel bookModel;
  final Function funtion;
  const ItemCard({Key key, this.bookModel, this.funtion}) : super(key: key);

  @override
  _ItemCardState createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: colorAmarilloPrimario,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Hero(
                  tag: '${widget.bookModel.title}',
                  child: FadeInImage.assetNetwork(
                    image: widget.bookModel.image,
                    imageErrorBuilder: (context, obj, _) {
                      return Image.asset(imageError);
                    },
                    placeholder: gifLoad,
                  ),
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  widget.bookModel.title,
                  textAlign: TextAlign.center,
                  style: styleItemBookTitle,
                )),
            SizedBox(height: 10),
            RaisedButton(
                onPressed: widget.funtion,
                color: colorAzulPrimario,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Text('Ver Detalles', style: styleButtonDetalles))
          ],
        ),
      ),
    );
  }
}
