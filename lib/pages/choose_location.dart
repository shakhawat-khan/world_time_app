import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {




  @override
  Widget build(BuildContext context) {

    print('build state');

    //print('build function run');

    return Scaffold(

      backgroundColor: Colors.grey[200],

      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('choose location'),
        centerTitle: true,
        elevation: 0,
      ),



    );
  }
}
