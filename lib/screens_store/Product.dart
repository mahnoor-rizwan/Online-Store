import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onlinestore/imageDetails.dart';
import 'package:onlinestore/screens_store/Home.dart';


class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
DataTransfer dataTransfer;

  @override
  Widget build(BuildContext context) {
  RouteSettings settings = ModalRoute.of(context).settings;
  dataTransfer =settings.arguments;
  print(dataTransfer.dataType);
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
            Text(dataTransfer.dataType, style: TextStyle(color: Colors.grey[600], fontSize: 18, fontWeight: FontWeight.w400, )),
            SizedBox(height: 5.0,),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  dataTransfer.dataURL,
                  //'assets/yellow-yellow-sweater.jpg',
                  height:320,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            SizedBox(height: 10.0,),
            Text('${dataTransfer.dataPrice}', style: TextStyle(color: Colors.grey[700], fontSize: 15, letterSpacing: 2.0)),
            SizedBox(height: 5.0,),
            Text('colors', style: TextStyle(color: Colors.grey[500], fontSize: 15)),
            SizedBox(height: 5.0,),
            Row(
              children: <Widget>[
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.amberAccent,
                  ),
                ),
                SizedBox(width: 15.0,),
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                    color: Colors.deepOrange,
                ),
                ),
                SizedBox(width: 15.0,),
                Container(
                  height: 20,
                  width: 20,decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.blue,
                ),
                ),
                SizedBox(width: 15.0,),
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.teal,
                ),
                ),
                SizedBox(width: 15.0,),
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.green,
                ),
                ),
              ],
            ),
            SizedBox(height: 5.0,),
            Text('size', style: TextStyle(color: Colors.grey[500], fontSize: 15)),
            SizedBox(height: 5.0,),
            Row(
              children: <Widget>[
                Container(
                  child: Center(child: Text('S',style: TextStyle(color: Colors.white))),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.amber,
                  ),
                  height: 25,
                  width: 33,
                ),
                SizedBox(width: 10,),
                Container(
                  child: Center(child: Text('M',style: TextStyle(color: Colors.white))),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.amber,
                  ),
                  height: 25,
                  width: 33,
                ),
                SizedBox(width: 10,),
                Container(
                  child: Center(child: Text('L',style: TextStyle(color: Colors.white))),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.amber,
                  ),
                  height: 25,
                  width: 33,
                ),
                SizedBox(width: 10,),
                Container(
                  child: Center(child: Text('XL',style: TextStyle(color: Colors.white))),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.amber,
                  ),
                  height: 25,
                  width: 33,
                ),
                SizedBox(width: 10,),
              ],
            ),
            SizedBox(height: 15,),
            Center(
              child: Container(
                child: Center(
                  child: Text(
                    'Add to Cart',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.amber,
                ),
                height: 50,
                width: 300,
              ),
            ),
          ],
        ),
      ),
      );
  }
}
