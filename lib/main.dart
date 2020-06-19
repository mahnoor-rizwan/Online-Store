import 'package:flutter/material.dart';
import 'package:onlinestore/screens_store/Home.dart';
import 'package:onlinestore/screens_store/Loading.dart';
import 'package:onlinestore/screens_store/Product.dart';
//import 'package:onlinestore/screens_store/Product.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/':(context)=> Loading(),
      '/home':(context)=> Home(),
      '/product':(context)=> Product(),

    },
  ));
}
