import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onlinestore/imageDetails.dart';
import 'package:onlinestore/screens_store/Product.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  List <imageDetails> listOfClothes = [

    imageDetails(imageURL:'assets/yellow-yellow-sweater.jpg', Price: '3000 Rs',type: 'Sweater'),
    imageDetails(imageURL:'assets/tshirt.jpg', Price: '1000 Rs',type: 'T-Shirt'),
    imageDetails(imageURL:'assets/sweatsirt-grey.jpg', Price: '3000 Rs',type: 'Sweatshirt'),

  ];

  String imgURL;



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Icon(Icons.dehaze, color: Colors.amber,size: 40,),
      ),
      body: ListView.builder(

        padding: EdgeInsets.only(left: 50, right: 50),
        scrollDirection: Axis.vertical,
        itemCount: listOfClothes.length,
        itemBuilder: (context, index) {
          return InkWell(
            child: Container(
              width: 100,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 5, top: 5),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    listOfClothes[index].imageURL,
                  height:400,
                  fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            onTap: (){
              DataTransfer dataTransfer= new DataTransfer(dataURL: listOfClothes[index].imageURL,dataPrice: listOfClothes[index].Price,dataType: listOfClothes[index].type);
              //print('tapped on container-- ${listOfClothes[index].Price}');
              Navigator.pushNamed(
                  context,
                  '/product',
                arguments: dataTransfer,
              );
            },
          );
        },
      ),
    );
  }
}


class DataTransfer{
  String dataURL;
  String dataPrice;
  String dataType;
DataTransfer({this.dataURL,this.dataPrice, this.dataType});
}