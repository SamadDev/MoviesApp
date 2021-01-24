import 'package:flutter/material.dart';
import 'package:rating_bar/rating_bar.dart';

class FeaturedScreen extends StatefulWidget {
  @override
  _FeaturedScreenState createState() => _FeaturedScreenState();
}
enum FeaturedMovies { TopRated, Upcoming, Popular}
class _FeaturedScreenState extends State<FeaturedScreen> {
  FeaturedMovies _selectedPage = FeaturedMovies.TopRated;
  final selectedPageColor = Colors.red[700];
  final unselectedPageColor = Colors.black54;
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Container(
            height: 50,
            width: 400,
            color: Theme.of(context).backgroundColor,
            child: Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:<Widget> [
                  InkWell(
                    child: Text('Top Rated',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,
                          color: _selectedPage == FeaturedMovies.TopRated ? selectedPageColor : unselectedPageColor)),
                    onTap: (){
                      setState(() {
                        _selectedPage =FeaturedMovies.TopRated;

                      });
                    },
                  ),
                  InkWell(child: Text('Upcoming', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
                      color: _selectedPage==FeaturedMovies.Upcoming ? selectedPageColor: unselectedPageColor),),
                    onTap: (){
                      setState(() {
                        _selectedPage =FeaturedMovies.Upcoming;
                      });
                    },),
                  InkWell(child: Text('Popular', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
                      color: _selectedPage == FeaturedMovies.Popular ? selectedPageColor : unselectedPageColor),),
                    onTap: (){
                      setState(() {
                        _selectedPage =FeaturedMovies.Popular;
                      });
                    },),

                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 20,),
        Expanded(
          child: activeScreen(),
        ),
      ],
    );



  }




  Widget activeScreen(){
    switch(_selectedPage) {
      case FeaturedMovies.TopRated:
        return GridView.count(
          crossAxisCount: 2,
          padding: const EdgeInsets.all(5),
          crossAxisSpacing: 10,
           mainAxisSpacing: 20,

          children: [
            listOfMovies('Home Land', 3.0),
            listOfMovies('Breaking Bad', 1.0),
            listOfMovies('The Suits', 4.0),
            listOfMovies('Power', 2.0),
            listOfMovies('Inception', 1.0),
          ],
        );
        break;

      case FeaturedMovies.Upcoming:
        return GridView.count(
          crossAxisCount: 2,
          padding: const EdgeInsets.all(5),
          crossAxisSpacing: 10,
          mainAxisSpacing: 20,

          children: [
            listOfMovies('Power', 2.0),
            listOfMovies('Inception', 1.0),
            listOfMovies('Breaking Bad', 1.0),
            listOfMovies('The Suits', 4.0),
            listOfMovies('Home Land', 3.0),
          ],
        );

        break;
      case FeaturedMovies.Popular:
        return GridView.count(
          crossAxisCount: 2,
          padding: const EdgeInsets.all(5),
          crossAxisSpacing: 10,
          mainAxisSpacing: 20,

          children: [

            listOfMovies('Breaking Bad', 1.0),
            listOfMovies('The Suits', 4.0),
            listOfMovies('Home Land', 3.0),
            listOfMovies('Power', 2.0),
            listOfMovies('Inception', 1.0),
          ],
        );
        break;
      default:
        return Container();

    }

  }





  listOfMovies(String name, double rating){
    return
      Padding(
        padding: const EdgeInsets.only(left: 5,right: 5),
        child: Column(
          children: [
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
        ),
      );
  }
}
