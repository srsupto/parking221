import 'package:badges/badges.dart';
import 'package:flutter/material.dart';


class PostPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Details';

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[700],
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.arrow_back),
        ),
        titleSpacing: 80.0,
        title: Text(
          "Find Here",
        ),
      ),
      body: ListView(
        children: <Widget>[

          //search box
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



          //first listing
          Container(
            padding: EdgeInsets.only(top: 8, right: 0, left: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  //width: 600.0,
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 100.0,
                        width: 100.0,
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Image.network("https://img-ik.cars.co.za/images/2018/9/Suzuki-Dzire/tr:n-news_500x/Suz-Dzire-9.JPG", fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Badge(
                            shape: BadgeShape.square, badgeColor: Colors.blue,
                            borderRadius: BorderRadius.circular(5),
                            position: BadgePosition.topEnd(top: -14, end: -35),
                            padding: EdgeInsets.all(2),
                            badgeContent: Text(
                                'admin', style: TextStyle(color: Colors.white, fontSize: 12)
                            ),
                            child: Text('Mercedes S63', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                          ),

                          Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Row(
                                //mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Text(
                                    "1500 USD",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                  SizedBox(width: 135.0,),
                                  Icon(Icons.favorite_border, color: Colors.red[700],)

                                ],
                              )

                          ),



                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Row(
                              children: <Widget>[
                                ImageIcon(
                                  AssetImage("assets/mileage.png"), color: Colors.red[700], size: 15,
                                ),
                                //Icon(Icons.calendar_today, size: 13, color: Colors.red[700],),
                                SizedBox(width: 2.0,),
                                Text(
                                  "35144 MI",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.0,
                                  ),
                                ),


                                Container(height: 10, child: VerticalDivider(color: Colors.red[700],),),

                                ImageIcon(
                                  AssetImage("assets/fuel.png"), color: Colors.red[700], size: 15,
                                ),
                                //Icon(Icons.my_location, size: 15, color: Colors.red[700],),
                                SizedBox(width: 2.0,),
                                Text(
                                  "Gasoline",
                                  style: TextStyle(
                                    fontSize: 12.0, color: Colors.grey, fontWeight: FontWeight.w500,
                                  ),
                                ),

                                Container(height: 10, child: VerticalDivider(color: Colors.red[700],),),

                                ImageIcon(
                                  AssetImage("assets/transmission.png"), color: Colors.red[700], size: 12,
                                ),
                                SizedBox(width: 2.0,),
                                Text(
                                  "Auto",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.0,
                                  ),
                                ),


                              ],
                            ),
                          ),

                          SizedBox(width: 10.0,),


                          Padding(
                            padding: const EdgeInsets.only(top: 5, left: 1),
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.my_location, size: 15, color: Colors.red[700],),
                                SizedBox(width: 5.0,),
                                Text(
                                  "Pamio ",
                                  style: TextStyle(
                                    fontSize: 12.0, color: Colors.grey, fontWeight: FontWeight.w500,
                                  ),
                                ),

                                Container(height: 10, child: VerticalDivider(color: Colors.red[700],),),

                                SizedBox(
                                  width: 0.0,
                                ),
                                Icon(Icons.calendar_today, size: 13, color: Colors.red[700],),
                                SizedBox(width: 5.0,),
                                Text(
                                  "01/12/2021",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.0,
                                  ),
                                ),

                                Container(height: 10, child: VerticalDivider(color: Colors.red[700],),),

                                ImageIcon(
                                  AssetImage("assets/lastused.png"), color: Colors.red[700], size: 12,
                                ),
                                SizedBox(width: 2.0,),
                                Text(
                                  "2years",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.0,
                                  ),
                                ),

                              ],
                            ),
                          ),







                        ],
                      ),


                      ///favorite here

//                        Container(
//                          padding: EdgeInsets.only(top: 60, left: 40),
//                          child: Row(
//                              children: <Widget>[
//                                Icon(Icons.favorite_border, color: Colors.red[700],),
//                              ]
//                          ),
//                        )



                    ],
                  ),
                ),


              ],
            ),
          ),

          SizedBox(height: 10,),

          Divider(height: 10, color: Colors.blue,),


          Container(
            padding: EdgeInsets.only(top: 8, right: 5, left: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  //width: 600.0,
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 100.0,
                        width: 100.0,
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Image.network("https://media.wired.com/photos/5d09594a62bcb0c9752779d9/125:94/w_1994,h_1500,c_limit/Transpo_G70_TA-518126.jpg", fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Badge(
                            shape: BadgeShape.square, badgeColor: Colors.blue,
                            borderRadius: BorderRadius.circular(5),
                            position: BadgePosition.topEnd(top: -14, end: -35),
                            padding: EdgeInsets.all(2),
                            badgeContent: Text(
                                'admin', style: TextStyle(color: Colors.white, fontSize: 12)
                            ),
                            child: Text('Mercedes S63', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '1500 USD',
                                style: TextStyle(

                                  fontSize: 14.0,
                                  //letterSpacing: 0.75,
                                ),
                              ),
                            ),
                          ),



                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.my_location, size: 15, color: Colors.red[700],),
                                SizedBox(width: 5.0,),
                                Text(
                                  "Pamio ",
                                  style: TextStyle(
                                      fontSize: 12.0, color: Colors.grey[800]
                                  ),
                                ),
                                SizedBox(
                                  width: 12.0,
                                ),
                                Icon(Icons.calendar_today, size: 13, color: Colors.red[700],),
                                SizedBox(width: 5.0,),
                                Text(
                                  "01/12/2021",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.0,
                                  ),
                                ),
                              ],
                            ),
                          ),




                        ],
                      ),


                      Container(
                        padding: EdgeInsets.only(top: 60, left: 40),
                        child: Row(
                            children: <Widget>[
                              Icon(Icons.favorite_border, color: Colors.red[700],),
                            ]
                        ),
                      )
                    ],
                  ),
                ),


              ],
            ),
          ),
          SizedBox(height: 10,),
          Divider(height: 10, color: Colors.blue,),

          Container(
            padding: EdgeInsets.only(top: 8, right: 5, left: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  //width: 600.0,
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 100.0,
                        width: 100.0,
//                          decoration: BoxDecoration(
//                            borderRadius: BorderRadius.circular(12.0),
//                            color: Colors.redAccent,
//                          ),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Image.network("https://images.unsplash.com/photo-1494697536454-6f39e2cc972d?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1000&q=80", fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Mercedes S63', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),

                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '1500 USD',
                                style: TextStyle(

                                  fontSize: 14.0,
                                  //letterSpacing: 0.75,
                                ),
                              ),
                            ),
                          ),



                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.my_location, size: 15, color: Colors.red[700],),
                                SizedBox(width: 5.0,),
                                Text(
                                  "Pamio ",
                                  style: TextStyle(
                                      fontSize: 12.0, color: Colors.grey[800]
                                  ),
                                ),
                                SizedBox(
                                  width: 12.0,
                                ),
                                Icon(Icons.calendar_today, size: 13, color: Colors.red[700],),
                                SizedBox(width: 5.0,),
                                Text(
                                  "01/12/2021",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.0,
                                  ),
                                ),
                              ],
                            ),
                          ),




                        ],
                      ),


                      Container(
                        padding: EdgeInsets.only(top: 60, left: 40),
                        child: Row(
                            children: <Widget>[
                              Icon(Icons.favorite_border, color: Colors.red[700],),
                            ]
                        ),
                      )
                    ],
                  ),
                ),



              ],
            ),
          ),
          Divider(height: 10, color: Colors.blue,),





        ],
      ),
    );
  }
}