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
              child: Image.network('https://i.ibb.co/jgM6z15/pesawat1.png')),
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
              child: Image.network('https://i.ibb.co/ZYRm97K/pesawat2.png')),
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
              child: Image.network('https://i.ibb.co/ZdVYfvF/pesawat3.png')),
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
                  maxHeight: screenh * 0.6, maxWidth: screenw / 2),
              child: Image.network('https://scontent.ftkg1-1.fna.fbcdn.net/v/t1.0-9/100073856_2633019056802711_4905269019046576128_o.jpg?_nc_cat=106&_nc_sid=0debeb&_nc_eui2=AeHvOdlgRfkpmeTb3e5Up18vBgvi-gexhMoGC-L6B7GEytv4pKGRCqVtQ3makkVN-aZT-kID-4guKbgNt9jbvcNl&_nc_oc=AQn9XxKvZpn1hPCizFh2U7P_E6W6-An7wNJy2xvX0qJhUOPVPAZGmxZ-hdL47SeJS04&_nc_ht=scontent.ftkg1-1.fna&oh=adf4005e24f7c75fee1d77330472f09d&oe=5EF0B2D0')),
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
                  constraints: BoxConstraints(maxWidth: screenw / 2),
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
              child: Image.network('https://scontent.ftkg1-1.fna.fbcdn.net/v/t1.0-9/97809765_2633018950136055_1259988154463551488_o.jpg?_nc_cat=105&_nc_sid=0debeb&_nc_eui2=AeH-hzAzGQscMBBQU8FqixilvMqQu3orhH28ypC7eiuEfcXPBkQarKdg9ikro0UvRcjJ21dYbOzInPoZo0__lKjF&_nc_oc=AQmJsJc5y1EdkFN6XBnfZdNnvYtF9nF38JyIXiPYWMIxBPzFi1f0goxnwmfJC87ylNM&_nc_ht=scontent.ftkg1-1.fna&oh=546b3e94dc0685997f66e24d8ee6cf2e&oe=5EED223B')),
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

