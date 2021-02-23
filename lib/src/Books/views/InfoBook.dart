import 'package:flutter/material.dart';
import 'package:flutter_bees2biz/src/Books/model/BookModel.dart';
import 'package:flutter_bees2biz/src/constants/colors.dart';
import 'package:flutter_bees2biz/src/constants/images.dart';
import 'package:flutter_bees2biz/src/constants/styles.dart';

class InfoBook extends StatelessWidget {
  final BookModel model;
  const InfoBook(this.model);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: colorAzulSecundario,
      appBar: AppBar(
          iconTheme: IconThemeData(color: colorBlanco),
          elevation: 0,
          backgroundColor: colorAzulSecundario),
      body: Card(
        margin: const EdgeInsets.all(30),
        color: colorAmarilloPrimario,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('${model.title}',
                    textAlign: TextAlign.center, style: styleInfoBookTitle),
                Hero(
                  tag: '${model.title}',
                  child: FadeInImage.assetNetwork(
                    image: model.image,
                    height: size.height / 2.2,
                    imageErrorBuilder: (context, obj, _) {
                      return Image.asset(imageError);
                    },
                    placeholder: gifLoad,
                  ),
                ),
                SizedBox(height: 10),
                Text('${model.subtitle}', style: styleInfoBookSubTitle),
                Text('${model.price}', style: styleInfoBookPrice)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
