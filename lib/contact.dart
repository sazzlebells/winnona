import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:html' as html;

Future<void> contactPopup(BuildContext context) async {
  double t_width = MediaQuery.of(context).size.width;
  double t_height = MediaQuery.of(context).size.height;
  return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Container(
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(
              vertical: t_height > 700 ? 250 : 150,
              horizontal: t_width * 0.2),
          decoration: BoxDecoration(
              color: Color.fromARGB(999, 255, 255, 255),
              borderRadius: BorderRadius.circular(30)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Wrap(
                spacing: 30,
                runAlignment: WrapAlignment.spaceAround,
                runSpacing: 30,
                children: <Widget>[
                  RaisedButton.icon(
                    onPressed: () {html.window.open('https://mail.google.com/mail/u/0/#inbox?compose=VpCqJVFvszSlnHKhnJfrvPsPjstRkvRlhhcKqfcPmdfhMPfPpkrVmZBrBBRxcxlbSmMRGwQ', '');},
                    elevation: 0,
                    icon: Image.asset('../assets/logo/gmail.png', width: 50),
                    label: Text(
                      "Gmail",
                      style: TextStyle(color: Colors.black87),
                    ),
                    color: Colors.transparent,
                    hoverColor: Color.fromARGB(999, 242, 167, 179),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  RaisedButton.icon(
                    onPressed: () {html.window.open("https://www.linkedin.com/in/winnona-sarah-gultom-44a674146/", "");},
                    elevation: 0,
                    icon: Image.asset('../assets/logo/linkedin.png', width: 50),
                    label: Text(
                      "LinkedIn",
                      style: TextStyle(color: Colors.black87),
                    ),
                    color: Colors.transparent,
                    hoverColor: Color.fromARGB(999, 242, 167, 179),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  RaisedButton.icon(
                    onPressed: () {html.window.open("https://github.com/sazzlebells","");},
                    elevation: 0,
                    icon: Image.asset('../assets/logo/github.png', width: 50),
                    label: Text(
                      "Github",
                      style: TextStyle(color: Colors.black87),
                    ),
                    color: Colors.transparent,
                    hoverColor: Color.fromARGB(999, 242, 167, 179),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  RaisedButton.icon(
                    onPressed: () {html.window.open("https://www.instagram.com/sazzlebells","");},
                    elevation: 0,
                    icon: Image.asset('../assets/logo/insta.png', width: 50),
                    label: Text(
                      "Instagram",
                      style: TextStyle(color: Colors.black87),
                    ),
                    color: Colors.transparent,
                    hoverColor: Color.fromARGB(999, 242, 167, 179),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ],
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "OK",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
                color: Color.fromARGB(999, 168, 203, 253),
                hoverColor: Color.fromARGB(999, 242, 167, 179),
              )
            ],
          ),
        );
      });
}