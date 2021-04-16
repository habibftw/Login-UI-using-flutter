import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("lib/images/bc.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 710,
                bottom: 10,
                left: 230,
                right: 10,
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(color: Colors.white)))),
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: Text('get started'),
                ),
              ),
              Positioned(
                  top: 400,
                  bottom: 300,
                  left: 80,
                  right: 200,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("lib/images/bruh.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ))
            ],
          )),
    );
  }
}
