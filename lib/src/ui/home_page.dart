import 'package:flutter/material.dart';
import 'package:moviesapp/src/ui/account_screen.dart';
import 'package:moviesapp/src/ui/featured_screen.dart';
import 'package:moviesapp/src/ui/movies_screen.dart';
import 'package:moviesapp/src/ui/search_screen.dart';
import 'package:moviesapp/src/ui/series_Screen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentTabIndex=1;
  onTapped(int index) {
    setState(() {
      currentTabIndex=index;
    });
  }

  final currentPage = [
  FeaturedScreen(),
  MoviesScreen(),
  SeriesScreen(),
  SearchScreen(),
    AccountScreen(),
  ];


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        elevation: 0,
          title:  CircleAvatar(
            backgroundColor: Colors.red[700],
            child: Text("logo"),
            // backgroundImage: NetworkImage(profileImg.toString()),
            radius: 26.5,
          )
      ),
      body: currentPage[currentTabIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTapped,
        backgroundColor: Colors.red,
        selectedItemColor: Colors.red[600],
        unselectedItemColor: Colors.black54,
        currentIndex: currentTabIndex,

        iconSize: 30,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.featured_video),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_movies),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.live_tv),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            title: Text(''),
            // backgroundColor: Colors.purple[600]
          ),
        ],
      ),
    );
  }
}



