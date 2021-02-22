import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

//DESING
import 'package:flutter_bees2biz/src/constants/colors.dart';
import 'package:flutter_bees2biz/src/constants/images.dart';
//ROUTES
import 'package:flutter_bees2biz/src/Books/views/BooksPage.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Books Bee2Biz',
      debugShowCheckedModeBanner: false,
      home: ScreenSplash(),
    );
  }
}

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({
    Key key,
  }) : super(key: key);

  @override
  _ScreenSplashState createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    loadNavigator();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: colorAzulPrimario,
      body: Center(
        child: ZoomIn(
          child: Image.asset(
            logoBee2Biz,
            width: size.width / 1.5,
          ),
        ),
      ),
    );
  }

  void loadNavigator() {
    Future.delayed(Duration(seconds: 2), () {
      print('SE VA PARA EL CATALOGO DE LIBROS');
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => BooksPage()));
    });
  }
}
