import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("lib/images/background.png"),
                  fit: BoxFit.cover)),
        ),
        Container(
          alignment: Alignment.topLeft,
          margin: EdgeInsets.only(left: 50, top: 412),
          child: Image.asset(
            'lib/images/logo.png',
            height: 187,
            width: 192,
          ),
        ),
        Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 225, top: 700, bottom: 10),
            child: SizedBox(
              width: 144,
              height: 60,
              child: ElevatedButton(
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(1, 47, 128, 237)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            side: BorderSide(color: Colors.white)))),
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: Text(
                  'Get started',
                  style: TextStyle(fontFamily: 'Nunito', fontSize: 22),
                ),
              ),
            )),
      ],
    ));
  }
}
