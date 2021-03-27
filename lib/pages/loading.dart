import 'package:flutter/material.dart';
import 'package:http/http.dart' ;
import 'dart:convert';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:flutter_app_new/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String time = 'loading';

  void setupWorldTime() async
  {

    WorldTime instance = WorldTime(location: 'Dhaka',flag: 'germany.png',url:'Asia/Dhaka');
    await instance.getTime();

    Navigator.pushReplacementNamed(context, '/home',arguments: {
      'location' : instance.location,
      'flag' : instance.flag,
      'time' : instance.time,
      'isDaytime' : instance.isDaytime,
    });

    print(instance.time);

    setState(() {
      time = instance.time;
    });

  }




  @override
  void initState() {

    super.initState();

    setupWorldTime();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.blue[900]  ,

      body: Center(

        child: SpinKitCircle(
          color: Colors.white,
          size: 80.0,
        ),

      )
    );
  }
}
