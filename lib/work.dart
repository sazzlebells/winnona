import 'package:flutter/material.dart';
import 'package:winnona_cv/paint.dart';
import 'package:winnona_cv/contact.dart';

class WorkPage extends StatefulWidget {
  @override
  _WorkPageState createState() => _WorkPageState();
}

class _WorkPageState extends State<WorkPage> {
  int pageIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  void pageChanged(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  void buttonTap(int index) {
    setState(() {
      pageIndex = index;
      _controller.animateToPage(index,
          duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.pushNamed(context, '/');
            }),
        actions: [
          FlatButton(
              onPressed: () {
                // buttonTap(1);
                Navigator.pushNamed(context, '/work');
              },
              child: Text(
                "work",
                style: TextStyle(
                  color: Colors.black54,
                  fontFamily: 'Exotc',
                  fontSize: 25,
                ),
              )),
          FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, '/profile');
              },
              child: Text(
                "profile",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Exotc',
                  fontSize: 25,
                ),
              )),
          FlatButton(
              onPressed: () {
                contactPopup(context);
              },
              child: Text(
                "contact me",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Exotc',
                  fontSize: 25,
                ),
              )),
        ],
      ),
      body: Stack(
        children: <Widget>[
          Container(
            child: PageView(
              controller: _controller,
              scrollDirection: Axis.vertical,
              onPageChanged: (index) {
                pageChanged(index);
              },
              children: [
                PageWidget1(),
                PageWidget2(),
                PageWidget3(),
                PageWidget4(),
                PageWidget5(),
              ],
            ),
          ),
          WavePaint(),
        ],
      ),
    );
  }
}

class PageWidget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenh = MediaQuery.of(context).size.height;
    double screenw = MediaQuery.of(context).size.width;
    return Column(children: <Widget>[
      SizedBox(height: screenh * 0.2),
      Wrap(
        spacing: 30,
        runAlignment: WrapAlignment.spaceEvenly,
        runSpacing: 40,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ConstrainedBox(
              constraints: BoxConstraints(
                  maxHeight: screenh * 0.6, maxWidth: screenw / 2),
              child: Image.network('https://i.ibb.co/hZtWTZ6/pesawat1.png')),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: screenw * 0.5),
            child: Column(
              children: <Widget>[
                Text(
                  "Pylon WS v1.0",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: screenw * 0.04,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(999, 23, 57, 92)),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  constraints: BoxConstraints(maxWidth: screenw / 2),
                  child: Text(
                    "Self project to learn UAV pilot and ground control research. Build on 2019. Concentrated mainly on the mechanics, design, ground control (automatic and manual).",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontSize: screenw * 0.025,
                        color: Color.fromARGB(999, 23, 57, 92)),
                  ),
                ),
              ],
            ),
          ),
        ],
      )
    ]);
  }
}

class PageWidget2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenh = MediaQuery.of(context).size.height;
    double screenw = MediaQuery.of(context).size.width;
    return Column(children: <Widget>[
      SizedBox(height: screenh * 0.2),
      Wrap(
        spacing: 30,
        runAlignment: WrapAlignment.spaceEvenly,
        runSpacing: 40,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ConstrainedBox(
              constraints: BoxConstraints(
                  maxHeight: screenh * 0.6, maxWidth: screenw / 2),
              child: Image.network('https://i.ibb.co/qrfSfhK/pesawat2.png')),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: screenw * 0.5),
            child: Column(
              children: <Widget>[
                Text(
                  "JatayuJet_10",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: screenw * 0.04,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(999, 23, 57, 92)),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  constraints: BoxConstraints(maxWidth: screenw / 2),
                  child: Text(
                    "Bayucaraka UAV team projects to contribute on KRTI 2018. I contributed on the troubleshooting, mechanic, and automatic ground control. We won 2nd place on the Racing Plane division.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontSize: screenw * 0.025,
                        color: Color.fromARGB(999, 23, 57, 92)),
                  ),
                ),
              ],
            ),
          ),
        ],
      )
    ]);
  }
}

class PageWidget3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenh = MediaQuery.of(context).size.height;
    double screenw = MediaQuery.of(context).size.width;
    return Column(children: <Widget>[
      SizedBox(height: screenh * 0.2),
      Wrap(
        spacing: 30,
        runAlignment: WrapAlignment.spaceEvenly,
        runSpacing: 40,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ConstrainedBox(
              constraints: BoxConstraints(
                  maxHeight: screenh * 0.6, maxWidth: screenw / 2),
              child: Image.network('https://i.ibb.co/Snxz0mg/pesawat3.png')),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: screenw * 0.5),
            child: Column(
              children: <Widget>[
                Text(
                  "LeleJet v2.0",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: screenw * 0.04,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(999, 23, 57, 92)),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  constraints: BoxConstraints(maxWidth: screenw / 2),
                  child: Text(
                    "Bayucaraka UAV team project to contribute on KRTI 2019. I contributed mainly on the automatic ground control, and troubleshooting, and mechanics.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontSize: screenw * 0.025,
                        color: Color.fromARGB(999, 23, 57, 92)),
                  ),
                ),
              ],
            ),
          ),
        ],
      )
    ]);
  }
}

class PageWidget4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenh = MediaQuery.of(context).size.height;
    double screenw = MediaQuery.of(context).size.width;
    return Column(children: <Widget>[
      SizedBox(height: screenh * 0.2),
      Wrap(
        spacing: 30,
        runAlignment: WrapAlignment.spaceEvenly,
        runSpacing: 40,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ConstrainedBox(
              constraints: BoxConstraints(
                  maxHeight: screenh * 0.6, maxWidth: screenw / 3),
              child: Image.network('https://i.ibb.co/7gkzgYY/exits.png')),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: screenw * 0.5),
            child: Column(
              children: <Widget>[
                Text(
                  "EXITS",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: screenw * 0.04,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(999, 23, 57, 92)),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  constraints: BoxConstraints(maxWidth: screenw / 3),
                  child: Text(
                    "Final Projects of Mobile Programming class at college. Build in 2019 with Android Studio. I contributed on the front end. It's an application for online discussion forum about exams, quizzes, and college task for ITS students.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontSize: screenw * 0.025,
                        color: Color.fromARGB(999, 23, 57, 92)),
                  ),
                ),
              ],
            ),
          ),
        ],
      )
    ]);
  }
}

class PageWidget5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenh = MediaQuery.of(context).size.height;
    double screenw = MediaQuery.of(context).size.width;
    return Column(children: <Widget>[
      SizedBox(height: screenh * 0.2),
      Wrap(
        spacing: 30,
        runAlignment: WrapAlignment.spaceEvenly,
        runSpacing: 40,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ConstrainedBox(
              constraints: BoxConstraints(
                  maxHeight: screenh * 0.6, maxWidth: screenw / 2),
              child: Image.network('https://i.ibb.co/p1bShMY/caloria.png')),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: screenw * 0.5),
            child: Column(
              children: <Widget>[
                Text(
                  "Caloria",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: screenw * 0.04,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(999, 23, 57, 92)),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  constraints: BoxConstraints(maxWidth: screenw / 2),
                  child: Text(
                    "Team Final Projects of Telematics Project class at college. Build in 2020 with Flutter. The project is about a system to make calories, macronutrients, and cholesterols counting more accurate. It comes with a food scale and the weight will be sent to application. The application will detect the food type from image taken from the camera.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontSize: screenw * 0.025,
                        color: Color.fromARGB(999, 23, 57, 92)),
                  ),
                ),
              ],
            ),
          ),
        ],
      )
    ]);
  }
}

