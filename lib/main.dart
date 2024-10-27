import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

// horror
var horName = ["IT", "The Conjuring", "The Shining"];
var horImg = ["assets/it.jpg", "assets/conjuring.jpg", "assets/shining.jpg"];
var horDir = ["Andy Muschietti, 2017", "James Wan, 2013", "Stanley Kubrick, 1980"];
var horWiki = ["https://en.wikipedia.org/wiki/It_(2017_film)", "https://en.wikipedia.org/wiki/The_Conjuring", "https://en.wikipedia.org/wiki/The_Shining_(film)"];
var horIMDB = ["https://www.imdb.com/title/tt1396484/?ref_=fn_al_tt_1", "https://www.imdb.com/title/tt1457767/?ref_=nv_sr_srsg_0", "https://www.imdb.com/title/tt0081505/?ref_=fn_al_tt_1"];

// action
var actName = ["The Avengers", "The Kingsman", "Top Gun"];
var actImg = ["assets/avengers.jpg", "assets/kingsman.jpg", "assets/topgun.jpg"];
var actDir = ["Joss Whedon, 2012", "Matthew Vaughn, 2014", "Tony Scott, 1986"];
var actWiki = ["https://en.wikipedia.org/wiki/The_Avengers_(2012_film)", "https://en.wikipedia.org/wiki/The_King%27s_Man", "https://en.wikipedia.org/wiki/Top_Gun"];
var actIMDB = ["https://www.imdb.com/title/tt0848228/?ref_=fn_al_tt_2", "https://www.imdb.com/title/tt2802144/?ref_=fn_al_tt_1", "https://www.imdb.com/title/tt0092099/?ref_=fn_al_tt_1"];

// comedy
var comName = ["Grown Ups", "Superbad", "Neighbors"];
var comImg = ["assets/grown.jpg", "assets/superbad.jpg", "assets/neighbors.jpg"];
var comDir = ["Dennis Dugan, 2010", "Greg Mottola, 2007", "Nicholas Stoller, 2014"];
var comWiki = ["https://en.wikipedia.org/wiki/Grown_Ups_(film)", "https://en.wikipedia.org/wiki/Superbad", "https://en.wikipedia.org/wiki/Neighbors_(2014_film)"];
var comIMDB = ["https://www.imdb.com/title/tt1375670/?ref_=nv_sr_srsg_0", "https://www.imdb.com/title/tt0829482/?ref_=nv_sr_srsg_0", "https://www.imdb.com/title/tt2004420/?ref_=nv_sr_srsg_0"];

// drama
var draName = ["Dunkirk", "1917", "Birdman"];
var draImg = ["assets/dunkirk.jpg", "assets/1917.jpg", "assets/birdman.jpg"];
var draDir = ["Christopher Nolan, 2017", "Sam Mendes, 2019", "Alejandro González Iñárritu, 2014"];
var draWiki = ["https://en.wikipedia.org/wiki/Dunkirk_(2017_film)", "https://en.wikipedia.org/wiki/1917_(2019_film)", "https://en.wikipedia.org/wiki/Birdman_(film)"];
var draIMDB = ["https://www.imdb.com/title/tt5013056/?ref_=nv_sr_srsg_0", "https://www.imdb.com/title/tt8579674/?ref_=fn_al_tt_1", "https://www.imdb.com/title/tt2562232/?ref_=fn_al_tt_1"];

// anime
var aniName = ["Jujutsu Kaisen: 0", "Dragon Ball Super: Broly", "Your Name"];
var aniImg = ["assets/jjk.jpg", "assets/dbs.jpg", "assets/yourname.jpg"];
var aniDir = ["Sunghoo Park, 2021", "Tatsuya Nagamine, 2018", "Makoto Shinkai, 2016"];
var aniWiki = ["https://en.wikipedia.org/wiki/Jujutsu_Kaisen_0_(film)", "https://en.wikipedia.org/wiki/Dragon_Ball_Super:_Broly", "https://en.wikipedia.org/wiki/Your_Name"];
var aniIMDB = ["https://www.imdb.com/title/tt14331144/?ref_=nv_sr_srsg_3", "https://www.imdb.com/title/tt7961060/?ref_=nv_sr_srsg_0", "https://www.imdb.com/title/tt5311514/?ref_=nv_sr_srsg_0"];

var newIndex;
var currArr;
var arrNum;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project 2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SilverExample(),
    );
  }
}

Widget _Selected_Movie(BuildContext context, String movieName, String imgName, String wikiPage, String imdbPage) {
  return AlertDialog(
    title: Text(movieName),
    content: Scaffold(
      backgroundColor: Colors.amber[500],
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset(currArr[newIndex]),
          ElevatedButton(
            onPressed: () {
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.orange[500],),
            child: const Text('More Info',
              style: TextStyle(color: Colors.black),
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              if (arrNum == 0) {
                currArr = horWiki;
              }
              else if (arrNum == 1) {
                currArr = actWiki;
              }
              else if (arrNum == 2) {
                currArr = comWiki;
              }
              else if (arrNum == 3) {
                currArr = draWiki;
              }
              else {
                currArr = aniWiki;
              }
              const url = "https://en.wikipedia.org/wiki/Lists_of_films";
              if (await canLaunch(url)) {
                launch(url);
              }
              else {
                throw 'Error';
              }
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.orange[500],),
            child: const Text('See Wiki Page',
              style: TextStyle(color: Colors.black),
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              if (arrNum == 0) {
                currArr = horIMDB;
              }
              else if (arrNum == 1) {
                currArr = actIMDB;
              }
              else if (arrNum == 2) {
                currArr = comIMDB;
              }
              else if (arrNum == 3) {
                currArr = draIMDB;
              }
              else {
                currArr = aniIMDB;
              }
              const url = "https://www.imdb.com/";
              if (await canLaunch(url)) {
                launch(url);
              }
              else {
                throw 'Error';
              }
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.orange[500],),
            child: const Text('See IMDB Page',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    ),
    actions: <Widget>[
      ElevatedButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: const Text('Exit',
          style: TextStyle(color: Colors.red),
        ),
      ),
    ],
  );
}


class SilverExample extends StatelessWidget {
  const SilverExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[500],
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: const Text('Horror', style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.red,
            ),),
            backgroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            expandedHeight: 100.0,
            pinned: true,
            elevation: 60,
            flexibleSpace: const FlexibleSpaceBar(
              background: Image(image: AssetImage('assets/horror.jpg'))
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 200.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Container(
                    width: 400.0,
                    child: Card(
                      elevation: 20,
                      color: Colors.black,
                      shadowColor: Colors.greenAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        tileColor: Colors.orange[1000],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                        leading: Image(image: AssetImage(horImg[index])),
                        title: Text(horName[index], style: TextStyle(fontSize: 25, color: Colors.blue[600]),),
                        subtitle: Text(horDir[index], style: const TextStyle(fontSize: 15, color: Colors.yellow),),
                        trailing: const Icon(Icons.thumb_up_alt_sharp),
                        isThreeLine: true,
                        onTap: () => {
                          currArr = horImg,
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const movieScreen())),
                          if (index == 0) [
                            newIndex = 0,
                          ]
                          else if (index == 1) [
                            newIndex = 1,
                          ]
                          else [
                            newIndex = 2,
                          ]
                        },
                        onLongPress: () => {
                          arrNum = 0,
                          showDialog(context: context, builder: (BuildContext context) => _Selected_Movie(context, horName[index], "imgName", "wikiPage", "imdbPage")),
                          currArr = horImg,
                          if (index == 0) [
                            newIndex = 0,
                          ]
                          else if (index == 1) [
                            newIndex = 1,
                          ]
                          else [
                            newIndex = 2,
                          ]
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          SliverAppBar(
            title: const Text('Action', style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.red,
            ),),
            backgroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            expandedHeight: 100.0,
            pinned: true,
            elevation: 60,
            flexibleSpace: const FlexibleSpaceBar(
              background: Image(image: AssetImage('assets/action.jpg'))
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 200.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Container(
                    width: 400.0,
                    child: Card(
                      elevation: 20,
                      color: Colors.black,
                      shadowColor: Colors.greenAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        tileColor: Colors.orange[1000],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                        leading: Image(image: AssetImage(actImg[index])),
                        title: Text(actName[index], style: TextStyle(fontSize: 25, color: Colors.blue[600]),),
                        subtitle: Text(actDir[index], style: const TextStyle(fontSize: 15, color: Colors.yellow),),
                        trailing: const Icon(Icons.thumb_up_alt_sharp),
                        isThreeLine: true,
                        onTap: () => {
                          currArr = actImg,
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const movieScreen())),
                          if (index == 0) [
                            newIndex = 0,
                          ]
                          else if (index == 1) [
                            newIndex = 1,
                          ]
                          else [
                            newIndex = 2,
                          ]
                        },
                        onLongPress: () => {
                          arrNum = 0,
                          showDialog(context: context, builder: (BuildContext context) => _Selected_Movie(context, actName[index], "imgName", "wikiPage", "imdbPage")),
                          currArr = actImg,
                          if (index == 0) [
                            newIndex = 0,
                          ]
                          else if (index == 1) [
                            newIndex = 1,
                          ]
                          else [
                            newIndex = 2,
                          ]
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          SliverAppBar(
            title: const Text('Comedy', style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.red,
            ),),
            backgroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            expandedHeight: 100.0,
            pinned: true,
            elevation: 60,
            flexibleSpace: const FlexibleSpaceBar(
              background: Image(image: AssetImage('assets/comedy.jpg'))
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 200.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Container(
                    width: 400.0,
                    child: Card(
                      elevation: 20,
                      color: Colors.black,
                      shadowColor: Colors.greenAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        tileColor: Colors.orange[1000],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                        leading: Image(image: AssetImage(comImg[index])),
                        title: Text(comName[index], style: TextStyle(fontSize: 25, color: Colors.blue[600]),),
                        subtitle: Text(comDir[index], style: const TextStyle(fontSize: 15, color: Colors.yellow),),
                        trailing: const Icon(Icons.thumb_up_alt_sharp),
                        isThreeLine: true,
                        onTap: () => {
                          currArr = comImg,
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const movieScreen())),
                          if (index == 0) [
                            newIndex = 0,
                          ]
                          else if (index == 1) [
                            newIndex = 1,
                          ]
                          else [
                            newIndex = 2,
                          ]
                        },
                        onLongPress: () => {
                          arrNum = 0,
                          showDialog(context: context, builder: (BuildContext context) => _Selected_Movie(context, comName[index], "imgName", "wikiPage", "imdbPage")),
                          currArr = comImg,
                          if (index == 0) [
                            newIndex = 0,
                          ]
                          else if (index == 1) [
                            newIndex = 1,
                          ]
                          else [
                            newIndex = 2,
                          ]
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          SliverAppBar(
            title: const Text('Drama', style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.red,
            ),),
            backgroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            expandedHeight: 100.0,
            pinned: true,
            elevation: 60,
            flexibleSpace: const FlexibleSpaceBar(
              background: Image(image: AssetImage('assets/drama.jpg'))
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 200.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Container(
                    width: 400.0,
                    child: Card(
                      elevation: 20,
                      color: Colors.black,
                      shadowColor: Colors.greenAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        tileColor: Colors.orange[1000],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                        leading: Image(image: AssetImage(draImg[index])),
                        title: Text(draName[index], style: TextStyle(fontSize: 25, color: Colors.blue[600]),),
                        subtitle: Text(draDir[index], style: const TextStyle(fontSize: 15, color: Colors.yellow),),
                        trailing: const Icon(Icons.thumb_up_alt_sharp),
                        isThreeLine: true,
                        onTap: () => {
                          currArr = draImg,
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const movieScreen())),
                          if (index == 0) [
                            newIndex = 0,
                          ]
                          else if (index == 1) [
                            newIndex = 1,
                          ]
                          else [
                            newIndex = 2,
                          ]
                        },
                        onLongPress: () => {
                          arrNum = 0,
                          showDialog(context: context, builder: (BuildContext context) => _Selected_Movie(context, draName[index], "imgName", "wikiPage", "imdbPage")),
                          currArr = draImg,
                          if (index == 0) [
                            newIndex = 0,
                          ]
                          else if (index == 1) [
                            newIndex = 1,
                          ]
                          else [
                            newIndex = 2,
                          ]
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          SliverAppBar(
            title: const Text('Anime', style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.red,
            ),),
            backgroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            expandedHeight: 100.0,
            pinned: true,
            elevation: 60,
            flexibleSpace: const FlexibleSpaceBar(
              background: Image(image: AssetImage('assets/anime.jpg'))
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 200.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Container(
                    width: 400.0,
                    child: Card(
                      elevation: 20,
                      color: Colors.black,
                      shadowColor: Colors.greenAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        tileColor: Colors.orange[1000],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                        leading: Image(image: AssetImage(aniImg[index])),
                        title: Text(aniName[index], style: TextStyle(fontSize: 25, color: Colors.blue[600]),),
                        subtitle: Text(aniDir[index], style: const TextStyle(fontSize: 15, color: Colors.yellow),),
                        trailing: const Icon(Icons.thumb_up_alt_sharp),
                        isThreeLine: true,
                        onTap: () => {
                          currArr = aniImg,
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const movieScreen())),
                          if (index == 0) [
                            newIndex = 0,
                          ]
                          else if (index == 1) [
                            newIndex = 1,
                          ]
                          else [
                            newIndex = 2,
                          ]
                        },
                        onLongPress: () => {
                          arrNum = 0,
                          showDialog(context: context, builder: (BuildContext context) => _Selected_Movie(context, aniName[index], "imgName", "wikiPage", "imdbPage")),
                          currArr = aniImg,
                          if (index == 0) [
                            newIndex = 0,
                          ]
                          else if (index == 1) [
                            newIndex = 1,
                          ]
                          else [
                            newIndex = 2,
                          ]
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ]
      ),
    );
  }
}

class movieScreen extends StatelessWidget {
  const movieScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Selected Movie"),
        backgroundColor: Colors.orange[500],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.redAccent,),
          child: Image.asset(currArr[newIndex]),
        ),
      ),
    );
  }
}
