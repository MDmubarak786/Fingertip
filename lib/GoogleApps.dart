import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class GoogleApps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(backgroundColor: Color(0xff1B5299),
          title: Text(
            "AIO",
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
                  _GoogleApps(
                    image: "assets/Icons/GoogleApps/Chrome.png",
                    name: "Chrome",
                    command: "https://www.google.com/chrome/",
                  ),
                  _GoogleApps(
                    image: "assets/Icons/GoogleApps/G-Pay.png",
                    name: "G-Pay",
                    command: "https://pay.google.com/intl/en_in/about/",
                  ),
                  _GoogleApps(
                    image: "assets/Icons/GoogleApps/GoogleClassroom.png",
                    name: "Classroom",
                    command: "https://edu.google.com/intl/en-GB/products/classroom/",
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _GoogleApps(
                    image: "assets/Icons/GoogleApps/GoogleDrive.png",
                    name: "Drive",
                    command: "https://drive.google.com/drive/u/0/?tab=wo",
                  ),
                  _GoogleApps(
                    image: "assets/Icons/GoogleApps/GoogleMaps.png",
                    name: "Maps",
                    command: "https://www.google.com/maps/",
                  ),
                  _GoogleApps(
                    image: "assets/Icons/GoogleApps/GooglePhotos.png",
                    name: "Photos",
                    command: "https://www.google.com/photos/about/",
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _GoogleApps(
                    image: "assets/Icons/GoogleApps/GoogleTranslate.png",
                    name: "Translate",
                    command: "https://translate.google.co.in/",
                  ),
                  _GoogleApps(
                    image: "assets/Icons/GoogleApps/Gamil.png",
                    name: "Gmail",
                    command: "https://mail.google.com/mail/",
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

// ignore: must_be_immutable
class _GoogleApps extends StatelessWidget {
  void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print(' could not launch $command');
    }
  }

  String image, name, command;
  _GoogleApps({this.image, this.name, this.command});

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
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            child: Text(name,
                style: TextStyle(fontSize: 18, color: Colors.white)),
          )
        ],
      ),
    );
  }
}
