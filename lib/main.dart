import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'registration_screen.dart';
import 'login_screen.dart';

void main(){
  runApp(MaterialApp(
    title: 'routes demo',
    initialRoute: '/home',
    routes: {
      '/home': (context) => HomeScreen(),
      '/login': (context) => LoginScreen(),
      '/registration': (context) => RegistrationScreen(),
    },
  ));
}

