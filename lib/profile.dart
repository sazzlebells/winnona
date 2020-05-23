import 'package:flutter/material.dart';
import 'package:winnona_cv/contact.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool press1 = false;
  bool press2 = false;
  bool press3 = false;
  bool press4 = false;
  double opacityLevel = 0.0;

  String orgTitle1 = "Institut Teknologi Sepuluh Nopember (2017 - NOW)";
  String orgTitle2 = "Bayucaraka UAV REsearch Team (2018 - NOW)";
  String orgTitle3 = "Persekutuan Mahasiswa Kristen ITS (2019 - NOW)";
  String orgTitle4 = "Himpunan Mahasiswa Teknik Elektro ITS (2019 - NOW)";
  String orgTitle5 = "Multimedia and Game Event (2018 - 2019)";

  String orgIsi1 = "BACHELOR IN COMPUTER ENGINEERING\n- Expected to be completed in September 2021\n- PPA 2018/2019 and 2019/2020 Awardee\n- Current GPA: 3.33";
  String orgIsi2 =
      " - ITS representative for Kontes Robot Terbang Indonesia (KRTI)\n - Working with UAV Automation System and Ground Control\n - Assisting and supervising effective working of production personnel\n - Awarded at 2nd place in KRTI 2018";
  String orgIsi3 = "- Being a servant for Friday Service";
  String orgIsi4 =
      " - Taking responsibilities in merchandise sales\n - Organized an entrepreneurship training for new students";
  String orgIsi5 = "- Coordinating and managing the data center";

  String fullname = "WINNONA SARAH TIO ROITO GULTOM ";
  String aboutme =
      "	    	A person who likes activities that requires good teamwork, eager to absorb as much knowledge and insight as possible in the pursuance of my goals. I am seeking a workplace where I may experience and learn about day to day operations and protocols within a professional practice related to my field of study.";

  @override
  Widget build(BuildContext context) {
    double t_width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.pushNamed(context, '/');
            }),
        actions: [
          FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, '/work');
              },
              child: Text(
                "work",
                style: TextStyle(
                  color: Colors.white,
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
                  color: Colors.black54,
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
      body: Container(
        child: ListView(
          padding: EdgeInsets.all(t_width * 0.15),
          children: <Widget>[
            Row(
              children: <Widget>[
                Image.network(
                  'https://i.ibb.co/R7bwgFj/pic.png',
                  width: t_width < 500 ? t_width * 2 : t_width / 3,
                ),
                SizedBox(width: 20),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      fullname,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontSize: t_width * 0.055,
                          color: Color.fromARGB(999, 23, 57, 92)),
                    ),
                    Text(
                      " Computer Engineering Student",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontSize: t_width * 0.025,
                          color: Color.fromARGB(999, 42, 142, 157)),
                    ),
                  ],
                )),
              ],
            ),
            aboutMe(context, t_width),
            Divider(
              thickness: 3,
              color: Color.fromARGB(999, 251, 222, 68),
            ),
            SizedBox(height: MediaQuery.of(context).size.width < 700 ? 20 : 40),
            Column(children: <Widget>[
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_drop_down_circle),
                    color: Color.fromARGB(999, 23, 57, 92),
                    onPressed: () {
                      setState(() {
                        press1 = true;
                        press2 = false;
                        press3 = false;
                        press4 = false;
                      });
                    },
                  ),
                  Text(
                    "Education",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: t_width * 0.04,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(999, 23, 57, 92)),
                  ),
                ],
              ),
              press1
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        isi(context, orgTitle1, orgIsi1),
                      ],
                    )
                  : SizedBox(
                      height:
                          MediaQuery.of(context).size.width < 700 ? 20 : 30),
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_drop_down_circle),
                    color: Color.fromARGB(999, 23, 57, 92),
                    onPressed: () {
                      setState(() {
                        opacityLevel = 1;
                        press1 = false;
                        press2 = true;
                        press3 = false;
                        press4 = false;
                      });
                    },
                  ),
                  Text(
                    "Organization & Team",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: t_width * 0.04,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(999, 23, 57, 92)),
                  ),
                ],
              ),
              press2
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        isi(context, orgTitle2, orgIsi2),
                        isi(context, orgTitle3, orgIsi3),
                        isi(context, orgTitle4, orgIsi4),
                        isi(context, orgTitle5, orgIsi5),
                      ],
                    )
                  : SizedBox(
                      height:
                          MediaQuery.of(context).size.width < 700 ? 20 : 30),
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_drop_down_circle),
                    color: Color.fromARGB(999, 23, 57, 92),
                    onPressed: () {
                      setState(() {
                        press1 = false;
                        press2 = false;
                        press3 = true;
                        press4 = false;
                      });
                    },
                  ),
                  Text(
                    "Skills",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: t_width * 0.04,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(999, 23, 57, 92)),
                  ),
                ],
              ),
              press3
                  ? Column(
                      children: <Widget>[
                        percent(t_width, "UI/UX Design", 0.8),
                        percent(t_width, "HTML/CSS", 0.7),
                        percent(t_width, "Flutter", 0.8),
                        percent(t_width, "C++", 0.6),
                        percent(t_width, "Java", 0.4),
                        percent(t_width, "Python", 0.35),
                      ],
                    )
                  : SizedBox(
                      height:
                          MediaQuery.of(context).size.width < 700 ? 25 : 35),
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_drop_down_circle),
                    color: Color.fromARGB(999, 23, 57, 92),
                    onPressed: () {
                      setState(() {
                        press1 = false;
                        press2 = false;
                        press3 = false;
                        press4 = true;
                      });
                    },
                  ),
                  Text(
                    "Interest & Hobbies",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: t_width * 0.04,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(999, 23, 57, 92)),
                  ),
                ],
              ),
              SizedBox(height: 30),
              press4
                  ? Wrap(
                      spacing: 40,
                      runSpacing: 20,
                      runAlignment: WrapAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(Icons.movie,
                            size: t_width * 0.055,
                            color: Color.fromARGB(999, 23, 57, 92),
                            semanticLabel: "Movies"),
                        Icon(Icons.music_note,
                            size: t_width * 0.055,
                            color: Color.fromARGB(999, 23, 57, 92),
                            semanticLabel: "Music"),
                        Icon(Icons.language,
                            size: t_width * 0.055,
                            color: Color.fromARGB(999, 23, 57, 92),
                            semanticLabel: "Languages"),
                        Icon(Icons.games,
                            size: t_width * 0.055,
                            color: Color.fromARGB(999, 23, 57, 92),
                            semanticLabel: "Games"),
                        Icon(Icons.create,
                            size: t_width * 0.055,
                            color: Color.fromARGB(999, 23, 57, 92),
                            semanticLabel: "Design"),
                      ],
                    )
                  : SizedBox(
                      height:
                          MediaQuery.of(context).size.width < 700 ? 25 : 35),
            ])
          ],
        ),
      ),
    );
  }

  Widget aboutMe(BuildContext context, double t_width) {
    return Column(
      children: [
        SizedBox(height: 20),
        Wrap(
          spacing: t_width < 700 ? 10 : 20,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Chip(
              avatar: Icon(Icons.person),
              label: Text(
                "June 22, 1999",
                style: TextStyle(fontSize: t_width * 0.017),
              ),
            ),
            Chip(
              avatar: Icon(Icons.contact_mail),
              label: Text(
                "winnona.sarah@gmail.com",
                style: TextStyle(fontSize: t_width * 0.017),
              ),
            ),
            Chip(
              avatar: Icon(Icons.location_city),
              label: Text(
                "Bandar Lampung",
                style: TextStyle(fontSize: t_width * 0.017),
              ),
            ),
          ],
        ),
        SizedBox(height: t_width < 700 ? 40 : 50),
        // Container(
        //   padding: EdgeInsets.all(10),
        //   child: Column(
        //     children: [
        Text(
          "- About Me -",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: t_width * 0.04, color: Color.fromARGB(999, 23, 57, 92)),
        ),
        SizedBox(height: 20),
        Text(
          aboutme,
          textAlign: TextAlign.justify,
          style: TextStyle(
              fontSize: t_width * 0.025,
              color: Color.fromARGB(999, 23, 57, 92)),
        ),
        //     ],
        //   ),
        //   decoration: BoxDecoration(
        //     color: Colors.white,
        //     borderRadius: BorderRadius.circular(25),
        //     // border: Border(
        //     //   right: BorderSide(color: Color.fromARGB(999, 168,203, 253), width: 2),
        //     //   bottom: BorderSide(color: Color.fromARGB(999, 168,203, 253), width: 2),
        //     // ),
        //     // boxShadow: [BoxShadow(
        //     //   color: Colors.grey.withOpacity(0.5),
        //     //   spreadRadius: 5,
        //     //   blurRadius: 7,
        //     //   offset: Offset(2, 3)
        //     // ),]
        //   ),
        // ),
      ],
    );
  }

  Widget percent(double t_width, String skill, double value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        SizedBox(height: MediaQuery.of(context).size.width < 1200 ? 35 : 45),
        Text(
          skill,
          textAlign: TextAlign.left,
          style: TextStyle(
              fontSize: t_width * 0.035,
              color: Color.fromARGB(999, 23, 57, 92)),
        ),
        LinearPercentIndicator(
          animation: true,
          percent: value,
          width: t_width * 0.35,
          lineHeight: t_width < 1200 ? t_width * 0.02 : t_width * 0.015,
          progressColor: Color.fromARGB(999, 168, 203, 253),
        ),
      ],
    );
  }

  Widget isi(BuildContext context, String title, String isi) {
    double t_width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          textAlign: TextAlign.left,
          style: TextStyle(
              fontSize: t_width * 0.03,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(999, 42, 142, 157)),
        ),
        Text(
          isi,
          textAlign: TextAlign.left,
          style: TextStyle(
              fontSize: t_width * 0.025,
              color: Color.fromARGB(999, 23, 57, 92)),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
