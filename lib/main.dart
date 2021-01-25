
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import 'Entermain.dart';
import 'MeetingApps.dart';
import 'More_Info.dart';
import 'ShoppingApps.dart';

import 'GoogleApps.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'Social.dart';
import 'StudyApps.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      scaffoldBackgroundColor: Color(0xff090446),
      accentColor: Colors.redAccent,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    home: MyApp(),
  ));
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print(' could not launch $command');
    }
  }
  var phone = "'Welcome Buddy'";
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Color(0xff1B5299),
    ));
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            leading:
            IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: ()
              {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new More_info()));
              },
            ),
            brightness: Brightness.dark,
            backgroundColor: Color(0xff1B5299),
            title: Text(
              "Fingertip",
              style: TextStyle(fontSize: 30),
            ),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      "Recent Apps",
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _firstLove(
                        image: "assets/Icons/SocialNetworks/whatsapp.png",
                        command: "whatsapp://send?phone=$phone",
                      ),
                      _firstLove(
                        image: "assets/Icons/SocialNetworks/facebook.png",
                        command: "https://www.facebook.com/",
                      ),
                      _firstLove(
                        image: "assets/Icons/SocialNetworks/instagram.png",
                        command: "https://www.instagram.com/",
                      ),
                      _firstLove(
                        image: "assets/Icons/EntertainmentApps/Netflix.png",
                        command: "https://www.netflix.com/",
                      ),
                      _firstLove(
                        image: "assets/Icons/MeetingApps/GoogleMeet.png",
                        command: "https://apps.google.com/meet/",
                      ),
                    ],
                  ),
                  Divider(thickness: 5,color: Colors.white24,),
                  Container(
                    child: Text(
                      "Apps",
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  InkWell(
                    splashColor: Colors.black.withOpacity(0.25),
                    radius: 500.0,
                    onTap: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new SocialApps()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Social Network Apps",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black87),
                            ),
                          ],
                        ),
                        height: 80.0,
                        decoration: BoxDecoration(
                            color: Color(0xff9FC2CC),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  InkWell(
                    splashColor: Colors.black.withOpacity(0.25),
                    radius: 500.0,
                    onTap: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new enterMain()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Entertainment Apps",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black87),
                            ),
                          ],
                        ),
                        height: 80.0,
                        decoration: BoxDecoration(
                            color: Color(0xff9FC2CC),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  InkWell(
                    splashColor: Colors.black.withOpacity(0.25),
                    radius: 500.0,
                    onTap: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new MeetingApps()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Meeting Apps",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black87),
                            ),
                          ],
                        ),
                        height: 80.0,
                        decoration: BoxDecoration(
                            color: Color(0xff9FC2CC),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  InkWell(
                    splashColor: Colors.black.withOpacity(0.25),
                    radius: 500.0,
                    onTap: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new GoogleApps()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Google Apps",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black87),
                            ),
                          ],
                        ),
                        height: 80.0,
                        decoration: BoxDecoration(
                            color: Color(0xff9FC2CC),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  InkWell(
                    splashColor: Colors.black.withOpacity(0.25),
                    radius: 500.0,
                    onTap: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new StudyApps()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Study Apps",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black87),
                            ),
                          ],
                        ),
                        height: 80.0,
                        decoration: BoxDecoration(
                            color: Color(0xff9FC2CC),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  InkWell(
                    splashColor: Colors.black.withOpacity(0.25),
                    radius: 500.0,
                    onTap: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new ShopingApps()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Shoping Apps",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black87),
                            ),
                          ],
                        ),
                        height: 80.0,
                        decoration: BoxDecoration(
                            color: Color(0xff9FC2CC),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

//"assets/Icons/EntertainmentApps/Disney.png"
// ignore: must_be_immutable
class Recent extends StatelessWidget {
  void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print(' could not launch $command');
    }
  }

  String img, name, custom;
  Recent({this.img, this.name, this.custom});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            customLaunch(custom);
          },
          child: Container(
            height: 100,
            width: 100,
            child: Card(
              child: Image(
                image: AssetImage(img),
              ),
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
          ),
        ),
        Container(
          child: Text(name),
        )
      ],
    );
  }
}

class _firstLove extends StatelessWidget {
  void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print(' could not launch $command');
    }
  }

  String image, command;
  _firstLove({this.image, this.command});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.black.withOpacity(0.25),
      // radius: 50.0,
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
                height: 50.0,
                width: 50.0,
              )),
            ),
            height: 50.0,
            width: 50,
            // width: 100.0,
            decoration: BoxDecoration(
                color: Color(0xffF7FFF7),
                borderRadius: BorderRadius.all(Radius.circular(5.0))),
          ),
        ],
      ),
    );
  }
}
