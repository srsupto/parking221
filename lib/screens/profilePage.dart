import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.white,
    ),
  );
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Sen',
      ),
      home: ProfilePage(),
    ),
  );
}

const kLargeTextStyle = TextStyle(
  fontSize: 25,
  fontWeight: FontWeight.bold,
);
const kTitleTextStyle = TextStyle(
  fontSize: 16,
  color: Color.fromRGBO(129, 165, 168, 1),
);
const kSmallTextStyle = TextStyle(
  fontSize: 16,
);



class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.fromLTRB(15, 35, 15, 15),
            child: Column(
              children: <Widget>[
                Center(
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSPEzcOw1S_ZFUIvDbvSRZyF6UOjYUb_RVKUXWPRIdgQB-_ChkH&usqp=CAU"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Alex Sparrow',
                  style: kLargeTextStyle,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'yourmail@github.com',
                  style: kTitleTextStyle,
                ),
                SizedBox(
                  height: 15,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    PostFollower(
                      number: 80,
                      title: 'Posts',
                    ),
                    PostFollower(
                      number: 110,
                      title: 'Followers',
                    ),
                    PostFollower(
                      number: 152,
                      title: 'Following',
                    ),
                  ],
                ),


                SizedBox(
                  height: 30,
                ),
                Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:<Widget> [
                      Divider(
                        height: 25,
                        color: Colors.grey[600],
                      ),
                      Container(
                        child: ListTile(
                          leading: Image.asset('assets/img/home.png',scale:1.0,height:25.0,width:25.0,),
                            title: Text('Edit Profile', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey[600]),),
                              trailing: Icon(Icons.keyboard_arrow_right, color: Colors.red[700],),
                              ),
                            ),
                      Divider(
                          height: 25, color: Colors.grey[600],),

                      Container(
                        child: ListTile(
                          leading: Image.asset('assets/img/email.png',scale:1.0,height:25.0,width:25.0,),
                            title: Text('Help & feedback', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey[600]),),
                              trailing: Icon(Icons.keyboard_arrow_right, color: Colors.red[700]),
                            ),
                           ),
                      Divider(
                           height: 25, color: Colors.grey[600],),



                      Container(
                        child: ListTile(
                          leading: Image.asset('assets/img/about.png',scale:1.0,height:25.0,width:25.0,),
                          title: Text('About', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey[600]),),
                          trailing: Icon(Icons.keyboard_arrow_right, color: Colors.red[700]),
                        ),
                      ),
                      Divider(
                        height: 25,
                        color: Colors.grey[600],
                      ),

                      Container(
                        child: Text('<<  Follow Us on Social Media  >>', style: TextStyle(color: Colors.grey[600], fontSize: 16), textAlign: TextAlign.center,),
                      ),
                      Divider(
                        height: 25,
                        color: Colors.grey[600],
                      ),

                      Container(
                        child: ListTile(
                          leading: Image.asset('assets/img/facebook.png',scale:1.0,height:25.0,width:25.0,),
                          title: Text('Facebook', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey[600]),),
                          trailing: Icon(Icons.keyboard_arrow_right, color: Colors.red[700]),
                        ),
                      ),
                      Divider(
                        height: 25,
                        color: Colors.grey[600],
                      ),

                      Container(
                        child: ListTile(
                          leading: Image.asset('assets/img/twitter.png',scale:1.0,height:25.0,width:25.0,),
                          title: Text('Twitter', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey[600]),),
                          trailing: Icon(Icons.keyboard_arrow_right, color: Colors.red[700]),
                        ),
                      ),
                      Divider(
                        height: 25,
                        color: Colors.grey[600],
                      ),

                      Container(
                        child: ListTile(
                          leading: Image.asset('assets/img/youtube.png',scale:1.0,height:25.0,width:25.0,),
                          title: Text('YouTube', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey[600]),),
                          trailing: Icon(Icons.keyboard_arrow_right, color: Colors.red[700]),
                        ),
                      ),


                    ]
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}



class PostFollower extends StatelessWidget {
  final int number;
  final String title;

  PostFollower({@required this.number, @required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          number.toString(),
          style: TextStyle(color: Colors.red[700], fontSize: 18,fontWeight: FontWeight.bold),
        ),
        Text(
          title,
          style: TextStyle(fontSize: 15),
        ),
      ],
    );
  }
}























