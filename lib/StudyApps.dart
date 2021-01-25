import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class StudyApps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff1B5299),
          title: Text(
            "Fingertip",
            style: TextStyle(fontSize: 30),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _Study(
                    image: "assets/Icons/StudyApps/Coursera.png",
                    name: "Coursera",
                    command: "https://www.coursera.org/",
                  ),
                  _Study(
                    image: "assets/Icons/StudyApps/Progate.png",
                    name: "Progate",
                    command: "https://progate.com/",
                  ),
                  _Study(
                    image: "assets/Icons/StudyApps/SoloLearn.png",
                    name: "SoloLearn",
                    command: "https://www.sololearn.com/",
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _Study(
                    image: "assets/Icons/StudyApps/Swayam.png",
                    name: "Swayam",
                    command: "https://swayam.gov.in/",
                  ),
                  _Study(
                    image: "assets/Icons/StudyApps/U-dict.png",
                    name: "U-dict",
                    command: "http://www.u-dictionary.com/home/",
                  ),
                  _Study(
                    image: "assets/Icons/StudyApps/Udemy.png",
                    name: "Udemy",
                    command: "https://www.udemy.com/",
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _Study(
                    image: "assets/Icons/StudyApps/Unacademy.png",
                    name: "Unacademy",
                    command: "https://unacademy.com/",
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _Study extends StatelessWidget {
  void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print(' could not launch $command');
    }
  }

  String image, name, command;
  _Study({this.image, this.name, this.command});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.black.withOpacity(0.25),
      radius: 500.0,
      onTap: () {
        customLaunch(command);
      },
      child: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                  child: Image.asset(
                image,
                height: 100.0,
                width: 50.0,
              )),
            ),
            height: 90.0,
            width: 90,
            // width: 100.0,
            decoration: BoxDecoration(
                color: Color(0xffF7FFF7),
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            child:
                Text(name, style: TextStyle(fontSize: 18, color: Colors.white)),
          )
        ],
      ),
    );
  }
}
