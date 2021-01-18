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
            padding: EdgeInsets.only(top: 8, right: 5, left: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  //width: 600.0,
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 75.0,
                        width: 75.0,
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSPEzcOw1S_ZFUIvDbvSRZyF6UOjYUb_RVKUXWPRIdgQB-_ChkH&usqp=CAU", fit: BoxFit.cover),
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
                        padding: EdgeInsets.only(top: 60, left: 55),
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
                        height: 75.0,
                        width: 75.0,
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSPEzcOw1S_ZFUIvDbvSRZyF6UOjYUb_RVKUXWPRIdgQB-_ChkH&usqp=CAU", fit: BoxFit.cover),
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
                        padding: EdgeInsets.only(top: 60, left: 55),
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
                        height: 75.0,
                        width: 75.0,
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSPEzcOw1S_ZFUIvDbvSRZyF6UOjYUb_RVKUXWPRIdgQB-_ChkH&usqp=CAU", fit: BoxFit.cover),
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
                        padding: EdgeInsets.only(top: 60, left: 55),
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
                        height: 75.0,
                        width: 75.0,
//                          decoration: BoxDecoration(
//                            borderRadius: BorderRadius.circular(12.0),
//                            color: Colors.redAccent,
//                          ),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSPEzcOw1S_ZFUIvDbvSRZyF6UOjYUb_RVKUXWPRIdgQB-_ChkH&usqp=CAU", fit: BoxFit.cover),
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
                        padding: EdgeInsets.only(top: 60, left: 55),
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





        ],
      ),
    );
  }
}