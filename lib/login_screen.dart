

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
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
            //alignment: Alignment.center,
            children: [
              Positioned(
                top:745,
                bottom:5 ,
                left: 0,
                right: 140,
                child: FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/registration');
                    },
                    child: Text('Register',style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,),)),
              ),
              Positioned(
                  top: 755,
                  bottom: 10,
                  left: 10,
                  right: 150,
                  child: Text('New here?',style: TextStyle(color: Colors.white),),
              ),
              Positioned(
                  top: 710,
                  bottom: 10,
                  left: 230,
                  right: 10,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        shape:
                        MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                side: BorderSide(color: Colors.white)))),
                    /*onPressed: () {
                      Navigator.pop(context);
                    },*/
                    child: Text('Login',style: TextStyle(fontSize: 20)),
                  ),
              ),
              Positioned(
                  top: 350,
                  bottom: 10,
                  left: 10,
                  right: 50,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text('Login',style: TextStyle(
                          color: Colors.blue,
                          fontSize: 35,
                      fontWeight: FontWeight.bold),),
                      Padding(padding: EdgeInsets.only(top: 20)),
                      Text('Email',style: TextStyle(color: Colors.blue),),
                      Container(
                          width: 280,
                          height: 70,
                          padding: EdgeInsets.all(10.0),
                          child: TextField(
                            decoration: new InputDecoration(
                                border: new OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(10.0),
                                  ),
                                ),
                                hintStyle: new TextStyle(color: Colors.grey),
                                hintText: "Type in your text",
                                fillColor: Colors.white),
                          )
                      ),
                      Text('Password',style: TextStyle(color: Colors.blue),),
                      Container(
                          width: 280,
                          height: 70,
                          padding: EdgeInsets.all(10.0),
                          child: TextField(
                            decoration: new InputDecoration(
                                border: new OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(10.0),
                                  ),
                                  borderSide: BorderSide(color: Colors.blue,width: 0)
                                ),
                                hintStyle: new TextStyle(color: Colors.grey),
                                hintText: "Type in your text",
                                fillColor: Colors.white),
                          )
                      ),

                    ],
                  )
                  ),
              Positioned(
                  top: 590,
                  bottom: 10,
                  right: 0,
                  left: 220,
                  child: Text('Forgot Password?',style: TextStyle(color: Colors.blue),))
            ],
          )
          ),
    );
  }
}
