import 'package:flutter/material.dart';
import 'package:parking221/screens/myPosts.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> with SingleTickerProviderStateMixin {

  final List<Tab> myTabs = <Tab>[
    Tab(child: Container(
      child: Text('My Posts', style: TextStyle(color: Colors.red[700]),),
    ),),
    Tab(child: Container(
      child: Text('My Favorites', style: TextStyle(color: Colors.red[700]),),
    ),),
  ];

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,

      ),

      body: Column(
        children: <Widget>[
          profilesection(),
          Container(
            color: Colors.white,
            child: TabBar(
              controller: _tabController,
              tabs: myTabs,
              indicatorWeight: 2.0,
              indicatorColor: Colors.red[700],
            ),
          ),

          Expanded(
            child: TabBarView(
                controller: _tabController,
                children: <Widget>[
                  myPosts(),
                  Text("h"),
                ],
              ),
          ),
          
        ],
      ),

    );
  }
}


class profilesection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: 150,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

//pro pic
          Container(
            child: Column(
              children: <Widget>[
                Container(
                  child: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage('https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg.jpg')
                  ),
                  margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                ),
                Container(
                  child: Text("Nusrat Jahan Yamim", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 12),),
                  margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.location_on, color: Colors.white, size: 12,),
                      Text("Dhaka", style: TextStyle(fontWeight: FontWeight.w400, color: Colors.white, fontSize: 11)),
                    ],
                  ),
                )

              ],
            ),

          ),

          //pro pic end
          Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text("2", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16),),
                        Text("Posts", style: TextStyle(fontWeight: FontWeight.w400, color: Colors.white, fontSize: 14),)
                      ],
                    ),
                    SizedBox(width: 8,),
                    Column(
                      children: <Widget>[
                        Text("225", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16),),
                        Text("Followers", style: TextStyle(fontWeight: FontWeight.w400, color: Colors.white, fontSize: 14),)
                      ],
                    ),
                    SizedBox(width: 8,),
                    Column(
                      children: <Widget>[
                        Text("0", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16),),
                        Text("Following", style: TextStyle(fontWeight: FontWeight.w400, color: Colors.white, fontSize: 14),)
                      ],
                    )
                  ],
                ),
              ),

              Container(
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.white)),
                  onPressed: (){}, child: Text("Edit Profile"), color: Colors.white,
                ),
              )
            ],
          ),
          //Text("Profile"),
        ],
      ),
    );
  }
}

