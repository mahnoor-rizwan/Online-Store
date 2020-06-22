import 'package:flutter/material.dart';
import 'package:onlinestore/screens_store/Home.dart';
import 'package:onlinestore/screens_store/Loading.dart';
import 'package:onlinestore/screens_store/Product.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      accentColor: Colors.amber[200],
    ),
    initialRoute: '/home',
    routes: {
      '/':(context)=> Loading(),
      '/home':(context)=> Home(),
      '/product':(context)=> Product(),

    },
  ));
}
