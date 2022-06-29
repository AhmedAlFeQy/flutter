import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/login.dart';
import 'package:untitled/register.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Padding(
        padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
        child: ListTile(
          trailing: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.teal),
              child: TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white70),
                ),
                onPressed: () {},
                child: Text('Skip'),
              )),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: CarouselSlider(
          items: [
            //1st Image of Slider
            Container(
              margin: EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: const DecorationImage(
                  image: NetworkImage("assets/Images/1.png"),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),

            //2nd Image of Slider
            Container(
              margin: EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: const DecorationImage(
                  image: NetworkImage("assets/Images/2.png"),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),

            //3rd Image of Slider
            Container(
              margin: EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: const DecorationImage(
                  image: NetworkImage("assets/Images/3.png"),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ],
          options: CarouselOptions(
            height: 250,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            viewportFraction: 0.8,
          ),
        ),
      ),
      Padding(
          padding: const EdgeInsets.all(30.0),
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.teal,
              ),
              child: TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white70),
                ),
                onPressed: () {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (BuildContext context) {
                    return Login();
                  }));
                },
                child: Text('Get Started'),
              ))),
      Padding(
        padding: const EdgeInsets.all(70.0),
        child: Row(
          children: [
            const Text("Do not have an Account?",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.black)),
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.teal),
              ),
              onPressed: () {
                Navigator.push(context,
                    CupertinoPageRoute(builder: (BuildContext context) {
                  return Register();
                }));
              },
              child: Text('Sign up'),
            )
          ],
        ),
      )
    ]));
  }
}
