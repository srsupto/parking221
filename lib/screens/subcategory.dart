import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:parking221/screens/postPage.dart';


//tab


class SubCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sub Category',
      theme: ThemeData(
        primaryColor: Colors.red[700],
        indicatorColor: Colors.white
      ),
      home: MyHomePage(title: 'Sub Category'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: Text(widget.title), centerTitle: true,
            bottom: TabBar(
              isScrollable: true,
              indicatorWeight: 2.0,
              tabs: <Widget>[
                Tab(
                  text: 'Cars',
                ),
                Tab(
                  text: 'Auto parts & Accessories',
                ),
                Tab(
                  text: 'Heavy vehicles',
                ),
              ],
            ),
          ),

       body: TabBarView(
        children: <Widget>[
          Home(),
          Home(),
          Home(),
        ],
      ),

      ),
    );
  }

}



//tab materials

class Home extends StatefulWidget {
  @override
  HomeState createState() => new HomeState();
}

class HomeState extends State<Home> {
  //final title = 'Add Device';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: Column(
        children: <Widget>[

          SizedBox(
            height: 10,
          ),

          GridDashboard()
        ],
      ),
    );
  }
}






class GridDashboard extends StatelessWidget {
  Items item1 = new Items(
      title: "All",
      subtitle: "",
      img: "assets/about.png");

  Items item2 = new Items(
    title: "Suzuki",
    subtitle: "",
    img: "assets/suzuki.png",
  );
  Items item3 = new Items(
    title: "Volkswagen",
    subtitle: "",
    img: "assets/volkswagen.png",
  );

  Items item6 = new Items(
      title: "Chevrolet",
      subtitle: "",
      img: "assets/chevrolet.png");

  Items item4 = new Items(
    title: "Suzuki",
    subtitle: "",
    img: "assets/suzuki.png",
  );
  Items item5 = new Items(
    title: "Volkswagen",
    subtitle: "",
    img: "assets/volkswagen.png",
  );








  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4, item5, item6];
    var color = 0xFFFFFFFF;
    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 10, right: 10),
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
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
                      width: 42,
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => PostPage()),
                );
              },

            );



          }
          ).toList()),
    );
  }
}

class Items {
  String title;
  String subtitle;
  String img;
  Items({this.title, this.subtitle, this.img});
}



