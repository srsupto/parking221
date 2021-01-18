import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:parking221/screens/postPage.dart';
import 'package:parking221/screens/subcategory.dart';
import 'package:flutter_svg/flutter_svg.dart';



class dashboardHome extends StatefulWidget {
  @override
  dashboardHomeState createState() => new dashboardHomeState();
}

class dashboardHomeState extends State<dashboardHome> {
  final title = 'ParkinG221';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[700],
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.arrow_back),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.notifications_active),
          ),
        ],
        titleSpacing: 70.0,
        title: //Image.asset('assets/logo.png', fit: BoxFit.cover),
        SvgPicture.asset(
          'assets/icons/logo.svg',
          color: Colors.white,
          //height: 16,
          //width: 16,
          //color: Colors.red[700],
        ),
      ),
      backgroundColor: Colors.grey[100],
      body: Column(
        children: <Widget>[


          Container(
            padding: EdgeInsets.all(8.0),
            child: Card(
              elevation: 6.0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                child: TextField(
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.blue,
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    hintText: "Search",
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.red[700],
                    ),
                    hintStyle: TextStyle(
                      fontSize: 15.0,
                      color: Colors.grey,
                    ),
                  ),
                  maxLines: 1,
                  //controller: _searchControl,
                ),
              ),
            ),
          ),



          SizedBox(
            height: 40,
          ),
          GridDashboard()
        ],
      ),
    );
  }
}









class GridDashboard extends StatelessWidget {
  Items item1 = new Items(
      title: "Car",
      img: "assets/car.png");

  Items item2 = new Items(
    title: "Motorcycle",
    img: "assets/motorcycle.png",
  );
  Items item3 = new Items(
    title: "Car Plate",
    img: "assets/plate.png",
  );
  Items item4 = new Items(
    title: "ETC",
    img: "assets/about.png",
  );


  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4];
    var color = 0xFFFFFFFF;
    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 16, right: 16),
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: myList.map((data) {
            return InkWell(
              child: Container(
                decoration: BoxDecoration(
                    color: Color(color), borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Image.asset(
                      data.img,
                      width: 42, color: Colors.red[700],
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Text(
                      data.title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),

                    ),
                    SizedBox(
                      height: 8,
                    ),


                  ],
                ),
              ),

              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SubCategory()),
                );
              },

            );



          }).toList()),
    );
  }
}

class Items {
  String title;
  String subtitle;
  String img;
  Items({this.title, this.subtitle, this.img});
}






