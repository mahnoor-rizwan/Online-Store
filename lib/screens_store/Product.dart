import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.amber,),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('',),
        backgroundColor: Colors.white,
        elevation: 0.0,
        //iconTheme: IconThemeData(color: Colors.amber,),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 40.0,right:40, bottom:20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Sweater', style: TextStyle(color: Colors.grey[600], fontSize: 20, fontWeight: FontWeight.w400, )),
            SizedBox(height: 15.0,),
            Center(
              child: Image.asset(
                  'assets/yellow-yellow-sweater.jpg',
              //height: 400,
              //fit: BoxFit.scaleDown,
              ),
            ),
            SizedBox(height: 15.0,),
            Text('colors', style: TextStyle(color: Colors.grey[500], fontSize: 15)),
            SizedBox(height: 5.0,),
            Row(
              children: <Widget>[
                Container(
                  child: Text('    '),
                  color: Colors.amberAccent,
                ),
                SizedBox(width: 10.0,),
                Container(
                  child: Text('    '),
                  color: Colors.deepOrange,
                ),
                SizedBox(width: 10.0,),
                Container(
                  child: Text('    '),
                  color: Colors.blue,
                ),
                SizedBox(width: 10.0,),
                Container(
                  child: Text('    '),
                  color: Colors.teal,
                ),
                SizedBox(width: 10.0,),
                Container(
                  child: Text('    '),
                  color: Colors.green,
                ),
                SizedBox(width: 10.0,),
              ],
            ),
            SizedBox(height: 5.0,),
            Text('size', style: TextStyle(color: Colors.grey[500], fontSize: 15)),
            SizedBox(height: 5.0,),
            Row(
              children: <Widget>[
                Container(
                  child: Center(child: Text('S',style: TextStyle(color: Colors.white))),
                  color: Colors.amber,
                  //padding: EdgeInsets.fromLTRB(6.0, 3,6,3),
                  height: 25,
                  width: 33,
                ),
                SizedBox(width: 10,),
                Container(
                  child: Center(child: Text('M',style: TextStyle(color: Colors.white))),
                  color: Colors.amber,
                  //padding: EdgeInsets.fromLTRB(6.0, 3,6,3),
                  height: 25,
                  width: 33,
                ),
                SizedBox(width: 10,),
                Container(
                  child: Center(child: Text('L',style: TextStyle(color: Colors.white))),
                  color: Colors.amber,
                  //padding: EdgeInsets.fromLTRB(6.0, 3,6,3),
                  height: 25,
                  width: 33,
                ),
                SizedBox(width: 10,),
                Container(
                  child: Center(child: Text('XL',style: TextStyle(color: Colors.white))),
                  color: Colors.amber,
                  //padding: EdgeInsets.fromLTRB(6.0, 3,6,3),
                  height: 25,
                  width: 33,
                ),
                SizedBox(width: 10,),
              ],
            ),
          ],
        ),
      ),
      );
  }
}
