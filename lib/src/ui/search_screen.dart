

import 'package:flutter/material.dart';
class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String searchInput;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20,),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[700],
            borderRadius: BorderRadius.circular(20),
          ),
          //color: Colors.grey[700],
          height: 50,
          width: 390,
          child: Padding(
            padding: const EdgeInsets.only(top: 20,left: 3,right: 20),
            child: TextFormField(

              onChanged: (val) {
                setState(() {
                  searchInput = val;
                });
              },
              decoration: InputDecoration(
                icon: Icon(Icons.search),
                hintText: 'Search your movie ',
                hintStyle: TextStyle(
                  fontSize: 14,
                  //color: Colors.grey,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
