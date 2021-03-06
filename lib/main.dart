import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home_page.dart';
import 'package:flutter_app/pages/imagenes_page.dart';
import 'package:flutter_app/pages/lista_page.dart';
import 'package:flutter_app/pages/texto_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      initialRoute: 'home',
      routes: {
        'home'     : (BuildContext context) => HomePage(),
        'texto'    : (BuildContext context) => TextoPage(),
        'lista'    : (BuildContext context) => ListaPage(),
        'imagenes' : (BuildContext context) => ImagenesPage(),
      }
    );
  }
}