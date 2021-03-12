import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  int counter = 0;

  void getData() async
  {
    // simulate network request for a username
    
     String username =   await Future.delayed(Duration(seconds: 3),(){

      return 'yoshi';

    });

    String bio = await Future.delayed(Duration(seconds: 2),(){

      return 'not a good boy';

     });

    print('$username -  $bio');
  }

  @override
  void initState() {

    super.initState();
    print('init state');
    getData();
  }

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


      body: RaisedButton(
        onPressed: ()
            {
              setState(() {
                counter +=1;
              });
            },

            child: Text('counter is $counter'),

      ),
    );
  }
}
