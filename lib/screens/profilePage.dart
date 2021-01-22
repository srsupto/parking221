import 'package:flutter/material.dart';
import 'package:parking221/screens/myPosts.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> with SingleTickerProviderStateMixin {

  final List<Tab> myTabs = <Tab>[
    Tab(text: 'My Posts'),
    Tab(text: 'Favorites'),
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
            color: Colors.red,
            child: TabBar(
              controller: _tabController,
              tabs: myTabs,
              indicatorWeight: 2.0,
              indicatorColor: Colors.white,
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
      height: 200,
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
                  child: Text("Nusrat Jahan Yamim", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16),),
                  margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.location_on, color: Colors.white,),
                      Text("Dhaka", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16)),
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
                        Text("0", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16),),
                        Text("Posts", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16),)
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text("0", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16),),
                        Text("Followers", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16),)
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text("0", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16),),
                        Text("Following", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16),)
                      ],
                    )
                  ],
                ),
              ),

              Container(
                child: RaisedButton(onPressed: (){}, child: Text("Edit Profile"), color: Colors.white,),
              )
            ],
          ),
          //Text("Profile"),
        ],
      ),
    );
  }
}

