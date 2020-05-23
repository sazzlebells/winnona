import 'package:flutter/material.dart';
import 'package:floating_dots/floating_dots.dart';
import 'package:flutter/rendering.dart';
import 'package:winnona_cv/paint.dart';
import 'package:winnona_cv/profile.dart';
import 'package:winnona_cv/work.dart';
import 'package:winnona_cv/contact.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Winnona Sarah',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Color.fromARGB(999, 168,203, 253),
        ),
        backgroundColor: Colors.white,
        buttonTheme: ButtonThemeData(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          height: 10,
        ),
        fontFamily: 'TW Cen',

      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/profile': (context) => ProfilePage(),
        '/work': (context) => WorkPage(),

      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double screen = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          FlatButton(
            onPressed: () {
              Navigator.pushNamed(context, '/work');
            }, 
            child: Text("work", 
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Exotc',
                fontSize: 25,
              )
            ,)
          ),
          FlatButton(
            onPressed: () {
              Navigator.pushNamed(context, '/profile');
            }, 
            child: Text("profile", 
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Exotc',
                fontSize: 25,
              )
            ,)
          ),
          FlatButton(
            onPressed: () {
                contactPopup(context);
              }, 
            child: Text("contact me", 
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Exotc',
                fontSize: 25,
              )
            ,)
          ),
        ],
      ),
      body: Stack(
        children: [
          FloatingDotGroup(
            number: 20,
            direction: Direction.up,
            trajectory: Trajectory.random,
            size: DotSize.small,
            colors: Colors.primaries,
            opacity: 0.5,
            speed: DotSpeed.mixed,
          ),
          Center(
            child: Container(
              margin: EdgeInsets.all(40),
              child: Image.network('https://drive.google.com/open?id=1mKoZZE5rjXcIqY9L3gZdj4GL1s0G27WD'),
            ),
          ),
          WavePaint(),
        ],
      ),
    );
  }
}
