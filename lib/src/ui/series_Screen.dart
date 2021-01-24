import 'package:flutter/material.dart';
import 'package:rating_bar/rating_bar.dart';

class SeriesScreen extends StatefulWidget {
  @override
  _SeriesScreenState createState() => _SeriesScreenState();
}

class _SeriesScreenState extends State<SeriesScreen> { listOfMovies(String name, double rating){
  return
    Column(
      children: [
        //SizedBox(height: 10,),
        Container(
          decoration: BoxDecoration(
            color: Colors.white10,
            // image: DecorationImage(
            //     image: AssetImage(),
            //     fit: BoxFit.cover
            // ),
            borderRadius: BorderRadius.circular(40),
          ),
          width: 200.0,
          height: 120.0,
        ),
        SizedBox(height: 10,),
        Text(name,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),
        SizedBox(height: 5,),
        RatingBar(
          filledIcon: Icons.star,
          emptyIcon: Icons.star_border_outlined,
          filledColor: Colors.orangeAccent,
          emptyColor: Colors.orangeAccent,
          size: 15,
          maxRating: 5,
          initialRating: rating,
        ),
      ],
    );
}

@override
Widget build(BuildContext context) {
  return  GridView.count(
    padding: const EdgeInsets.all(5),
    crossAxisSpacing: 10,
    mainAxisSpacing: 20,
    crossAxisCount: 2,
    children: [
      listOfMovies('Inception', 4.0),
      listOfMovies('Power', 2.0),
      listOfMovies('Breaking Bad', 5.0),
      listOfMovies('The Suits', 1.0),
      listOfMovies('Home Land', 0.5),
    ],
  );
}
}
