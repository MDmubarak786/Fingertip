import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: camel_case_types
class enterMain extends StatelessWidget {
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
                  _Enter(
                    image: "assets/Icons/EntertainmentApps/Youtube.png",
                    name: "Youtube",
                    command: "https://www.youtube.com/",
                  ),
                  _Enter(
                    image: "assets/Icons/EntertainmentApps/Netflix.png",
                    name: "Netflix",
                    command: "https://www.netflix.com/",
                  ),
                  _Enter(
                    image: "assets/Icons/EntertainmentApps/Disney.png",
                    name: "Disney",
                    command: "https://www.hotstar.com/in",
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _Enter(
                    image: "assets/Icons/EntertainmentApps/Prime.png",
                    name: "Prime",
                    command: "https://www.primevideo.com/?ref_=dvm_pds_amz_in_as_s_b_brand27|m_4mEHKPKZc_c",
                  ),
                  _Enter(
                    image: "assets/Icons/EntertainmentApps/Mx-Player.png",
                    name: "MX Player",
                    command: "https://www.mxplayer.in/",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class _Enter extends StatelessWidget {
  void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print(' could not launch $command');
    }
  }

  String image, name, command;
  _Enter({this.image, this.name, this.command});

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
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            child: Text(
              name,
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
