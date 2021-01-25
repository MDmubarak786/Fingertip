import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ShopingApps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar( backgroundColor: Color(0xff1B5299),
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
                  _shop(
                    image: "assets/Icons/ShoppingApps/Amazon.png",
                    name: "Amazon",
                    command: "https://www.amazon.in/",
                  ),
                  _shop(
                    image: "assets/Icons/ShoppingApps/Flipkart.png",
                    name: "Flipkart",
                    command: "https://www.flipkart.com/",
                  ),
                  _shop(
                    image: "assets/Icons/ShoppingApps/AliExpress.png",
                    name: "Ali Express",
                    command: "https://www.aliexpress.com/",
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _shop(
                    image: "assets/Icons/ShoppingApps/Myntra.png",
                    name: "Myntra",
                    command: "https://www.myntra.com/",
                  ),
                  _shop(
                    image: "assets/Icons/ShoppingApps/Snapdeal.png",
                    name: "Snapdeal",
                    command: "https://www.snapdeal.com/",
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

class _shop extends StatelessWidget {
  void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print(' could not launch $command');
    }
  }

  String image, name, command;
  _shop({this.image, this.name, this.command});

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
            child: Text(name,
                style: TextStyle(fontSize: 18, color: Colors.white)),
          )
        ],
      ),
    );
  }
}
