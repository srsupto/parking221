import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';




class PostDetailsPage extends StatelessWidget {
  static final List<String> imgSlider = [
    'car1.jpg',
    'car2.jpg',
    'car3.jpg',
    'car4.jpg',
    'car5.jpg'
  ];
  final CarouselSlider autoPlayImage = CarouselSlider(
    items: imgSlider.map((fileImage) {
      return Container(
        margin: EdgeInsets.all(5.0),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: Image.asset(
            'assets/images/${fileImage}',
            width: 10000,
            fit: BoxFit.cover,
          ),
        ),
      );
    }).toList(),
    height: 150,
    autoPlay: true,
    enlargeCenterPage: true,
    aspectRatio: 2.0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text('Details'),
        backgroundColor: Colors.red[700],
      ),
      body: ListView(
        children: <Widget>[
          autoPlayImage,
          SizedBox(height: 20,),
          Container(
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 200,),
                          child: Icon(Icons.favorite_border, color: Colors.red[700],),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 15,),
                          child: Icon(Icons.share, color: Colors.red[700],),
                        )
                      ]
                  ),

                ),

                Container(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    child: Text('Infinity', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.grey[600]),),
                    alignment: Alignment.centerLeft,
                  )
                ),

                Divider(height: 10,),

                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(8.0),
                          child: Text('2000 USD', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.red[700]),),
                        ),

                        Container(
                          padding: EdgeInsets.all(8.0),
                          child: Text('10000km', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.blue),),
                        )
                      ]
                  ),
                ),

                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Paragon City', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey[600]),),
                        ),
                        Container(
                          padding: EdgeInsets.all(8.0),
                          child: Text('2003', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey[600]),),
                        )
                      ]
                  ),
                ),

                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(8.0),
                          child: Text('used', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey[600]),),
                        ),

                        Container(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Silver', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey[600]),),
                        )
                      ]
                  ),
                ),

                Divider(height: 10,),

                Container(
                    padding: EdgeInsets.all(8.0),
                    child: Align(
                      child: Text('Advanced Details', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.grey[700]),),
                      alignment: Alignment.centerLeft,
                    )
                ),

                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Body Type :', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey[600]),),
                        ),

                        Container(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Sedan', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey[600]),),
                        )
                      ]
                  ),
                ),

                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Doors :', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey[600]),),
                        ),

                        Container(
                          padding: EdgeInsets.all(8.0),
                          child: Text('4', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey[600]),),
                        )
                      ]
                  ),
                ),

                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(8.0),
                          child: Text('No, of Cylinders :', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey[600]),),
                        ),

                        Container(
                          padding: EdgeInsets.all(8.0),
                          child: Text('6', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey[600]),),
                        )
                      ]
                  ),
                ),


                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(8.0),
                          child: Text('used', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey[600]),),
                        ),

                        Container(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Silver', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey[600]),),
                        )
                      ]
                  ),
                ),

                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Horse Power', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey[600]),),
                        ),

                        Container(
                          padding: EdgeInsets.all(8.0),
                          child: Text('8000hp', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey[600]),),
                        )
                      ]
                  ),
                ),

                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Fuel Type', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey[600]),),
                        ),

                        Container(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Gasoline', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey[600]),),
                        )
                      ]
                  ),
                ),

                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Service :', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey[600]),),
                        ),

                        Container(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Full History of Car Service', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey[600]),),
                        )
                      ]
                  ),
                ),

                Container(
                    padding: EdgeInsets.all(8.0),
                    child: Align(
                      child: Text('Tech Features', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.grey[600]),),
                      alignment: Alignment.centerLeft,
                    )
                ),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  //width: 200,
                  child: Text(
                    "4 Wheel Drive, All Wheel Drive, All Wheel Steering, Anti Lock Brakes/ABS, Cruise Control, Dual Exhaust, Front Airbags, Front Wheel Drive, N2O System, Power Steering, Rear Wheel System, Side Airbags, 4 Wheel Drive, All Wheel Drive, All Wheel Steering, Anti Lock Brakes/ABS, Cruise Control, Dual Exhaust, Front Airbags, Front Wheel Drive ",
                    style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400, color: Colors.grey[600]),
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    maxLines: 15,
                  ),
                ),

                Container(
                    padding: EdgeInsets.all(8.0),
                    child: Align(
                      child: Text('Extras', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.grey[600]),),
                      alignment: Alignment.centerLeft,
                    )
                ),

                Container(
                  padding: const EdgeInsets.all(8.0),
                  //width: 200,
                  child: Text(
                    "Power Steering, Rear Wheel System, Side Airbags, 4 Wheel Drive, All Wheel Drive, All Wheel Steering, Anti Lock Brakes/ABS, Cruise Control, Dual Exhaust, Front Airbags, Front Wheel Drive, 4 Wheel Drive, All Wheel Drive, All Wheel Steering, Anti Lock Brakes/ABS, Cruise Control, Dual Exhaust, Front Airbags, Front Wheel Drive, N2O System, Power Steering, Rear Wheel System, Side Airbags, 4 Wheel Drive, All Wheel Drive, All Wheel Steering, Anti Lock Brakes/ABS, Cruise Control, Dual Exhaust, Front Airbags, Front Wheel Drive ",
                    style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400, color: Colors.grey[600]),
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    maxLines: 15,
                  ),
                ),

                Container(
                    padding: EdgeInsets.all(8.0),
                    child: Align(
                      child: Text('Listed by', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.grey[600]),),
                      alignment: Alignment.centerLeft,
                    )
                ),

                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      ListTile(
                        leading: CircleAvatar(
                          radius: 20.0,
                          backgroundImage: AssetImage('assets/image2.jpeg'),
                        ),
                        title: Text('Muhammad Yousef', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                      ),
                    ],
                  ),
                ),

                Container(
                  padding: EdgeInsets.all(8.0),
                  child: Image(
                    image: AssetImage('assets/images/location.png'),
                  ),
                ),


                Container(
                    padding: EdgeInsets.all(8.0),
                    child: Align(
                      child: Text('Description', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.grey[600]),),
                      alignment: Alignment.centerLeft,
                    )
                ),

                Container(
                  padding: const EdgeInsets.all(8.0),
                  //width: 200,
                  child: Text(
                    "Power Steering, Rear Wheel System, Side Airbags, 4 Wheel Drive, All Wheel Drive, All Wheel Steering, Anti Lock Brakes/ABS, Cruise Control, Dual Exhaust, Front Airbags, Front Wheel Drive, 4 Wheel Drive, All Wheel Drive, All Wheel Steering, Anti Lock Brakes/ABS, Cruise Control, Dual Exhaust, Front Airbags, Front Wheel Drive, N2O System, Power Steering, Rear Wheel System, Side Airbags, 4 Wheel Drive, All Wheel Drive, All Wheel Steering, Anti Lock Brakes/ABS, Cruise Control, Dual Exhaust, Front Airbags, Front Wheel Drive ",
                    style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400, color: Colors.grey[600]),
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    maxLines: 15,
                  ),
                ),

              ],
            ),
          ),

          Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.red[700])),
                    color: Colors.white,
                    textColor: Colors.red[700],
                    padding: EdgeInsets.all(8.0),
                    onPressed: () {},
                    child: Text(
                      "Message Buyer",
                      style: TextStyle(
                          fontSize: 14.0, fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.red[700])),
                    onPressed: () {},
                    color: Colors.red[700],
                    textColor: Colors.white,
                    child: Text("Follow Buyer",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                  ),
                ],
              )
          ),




        ],
      ),
    );
  }
}

