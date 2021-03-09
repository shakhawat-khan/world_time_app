

import 'package:flutter/material.dart';
import 'package:flutter_app_new/pages/choose_location.dart';
import 'package:flutter_app_new/pages/home.dart';
import 'package:flutter_app_new/pages/loading.dart';


void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/':(context)=> Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),
    },
  ));
}

