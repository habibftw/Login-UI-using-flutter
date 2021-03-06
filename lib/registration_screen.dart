import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: Stack(children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("lib/images/background.png"),
                    fit: BoxFit.fill)),
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 25, right: 77),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(padding: EdgeInsets.only(top: 150)),
                        Text(
                          'Register',
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 35,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(padding: EdgeInsets.only(top: 15)),
                        Text(
                          'Full Name',
                          style: TextStyle(color: Colors.blue, fontSize: 14),
                        ),
                        Padding(
                          padding: EdgeInsets.all(2.0),
                        ),
                        Container(
                            height: 40,
                            child: TextField(
                              decoration: new InputDecoration(
                                  border: new OutlineInputBorder(
                                    borderRadius: const BorderRadius.all(
                                      const Radius.circular(8.0),
                                    ),
                                  ),
                                  hintStyle: new TextStyle(color: Colors.grey),
                                  fillColor: Colors.white),
                            )),
                        Padding(
                          padding: EdgeInsets.all(10.0),
                        ),
                        Text(
                          'Email',
                          style: TextStyle(color: Colors.blue, fontSize: 14),
                        ),
                        Padding(
                          padding: EdgeInsets.all(2.0),
                        ),
                        Container(
                            height: 40,
                            child: TextField(
                              decoration: new InputDecoration(
                                  border: new OutlineInputBorder(
                                    borderRadius: const BorderRadius.all(
                                      const Radius.circular(8.0),
                                    ),
                                  ),
                                  hintStyle: new TextStyle(color: Colors.grey),
                                  fillColor: Colors.white),
                            )),
                        Padding(
                          padding: EdgeInsets.all(10.0),
                        ),
                        Text(
                          'Password',
                          style: TextStyle(color: Colors.blue, fontSize: 14),
                        ),
                        Padding(
                          padding: EdgeInsets.all(2.0),
                        ),
                        Container(
                            height: 40,
                            child: TextField(
                              decoration: new InputDecoration(
                                  border: new OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(8.0),
                                      ),
                                      borderSide: BorderSide(
                                          color: Colors.blue, width: 0)),
                                  hintStyle: new TextStyle(color: Colors.grey),
                                  fillColor: Colors.white),
                            )),
                        Row(
                          children: [
                            Container(
                                //alignment: Alignment.centerLeft,
                                margin: EdgeInsets.only(top: 20),
                                child: IconButton(
                                  icon: Image.asset(
                                    'lib/images/google.png',
                                  ),
                                  iconSize: 20,
                                )),
                            Container(
                                //alignment: Alignment.centerLeft,
                                margin: EdgeInsets.only(top: 20),
                                child: IconButton(
                                  icon: Image.asset(
                                    'lib/images/fb.png',
                                  ),
                                  iconSize: 20,
                                )),
                            Container(
                                //alignment: Alignment.centerLeft,
                                margin: EdgeInsets.only(top: 15),
                                child: IconButton(
                                  icon: Image.asset(
                                    'lib/images/apple.png',
                                  ),
                                  iconSize: 20,
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(right: 20, bottom: 20),
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
                    Navigator.pushNamed(context, '/register');
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(fontFamily: 'Nunito', fontSize: 24),
                  ),
                ),
              )),
          Container(
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(bottom: 10, left: 25),
              child: Row(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Already a member?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      style: TextButton.styleFrom(padding: EdgeInsets.zero),
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                ],
              )),
        ]));
  }
}
