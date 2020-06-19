import 'package:flutter/material.dart';
import 'package:onlinestore/imageDetails.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  List <imageDetails> ListOfClothes = [

    imageDetails(imageURL:'assets/yellow-yellow-sweater.jpg', Price: '3000 Rs',),
    imageDetails(imageURL:'assets/tshirt.jpg', Price: '1000 Rs',),
    imageDetails(imageURL:'assets/sewatshirt.jpg', Price: '3000 Rs',),

  ];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: <Widget>[
              FlatButton.icon(
                onPressed: (){
                  Navigator.pushNamed(context, '/product');
                },
                icon: Icon(Icons.dehaze),
                label: Text('choose this'),
              ),
              ListView.builder(
                itemCount: ListOfClothes.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                    onTap: (){},
                      title: Text(ListOfClothes[index].Price),
                    ),
                  );
                },
              ),
            ],
          ),
      ),
    );
  }
}


//              DraggableScrollableSheet(
//                builder: (context, scrollController) {
//                  return SingleChildScrollView(
//                    controller: scrollController,
//                    child: Image.asset('assets/yellow-yellow-sweater.jpg'),
//                  );
//                },
//              ),