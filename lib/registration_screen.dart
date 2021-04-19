
import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
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
                  margin: EdgeInsets.only(top: 730, left: 25),
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
                            Navigator.pop(context);
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
                        Navigator.pushNamed(context, '/register');
                      },
                      child: Text(
                        'Register',
                        style: TextStyle(fontFamily: 'Nunito', fontSize: 24),
                      ),
                    ),
                  )),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 25, top: 340),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                        width: 309,
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
                        width: 309,
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
                        width: 309,
                        height: 40,
                        child: TextField(
                          decoration: new InputDecoration(
                              border: new OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(8.0),
                                  ),
                                  borderSide:
                                  BorderSide(color: Colors.blue, width: 0)),
                              hintStyle: new TextStyle(color: Colors.grey),
                              fillColor: Colors.white),
                        )),
                  ],
                ),
              ),

              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 15, top: 620),
                child: Image.asset(
                  'lib/images/Auth.png',
                  height: 65,
                  width: 187,
                ),
              ),
    ]
    )
    );
  }
}
