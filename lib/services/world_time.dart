import 'package:http/http.dart' ;
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {

  String location; // location name for the uI
  String time; // the time in that location
  String flag;// url to an asset flag icon
  String url;// location url for api endpoint
  bool isDaytime; //true or false

  WorldTime({this.location,this.flag,this.url});




  Future<void> getTime() async
  {
    try {
      Response response = await get(
          'https://worldtimeapi.org/api/timezone/$url');
      Map data = jsonDecode(response.body);

      //print(data);

      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);


      //print(datetime);

      //create DateTime object

      DateTime now = DateTime.parse(datetime);

      now = now.add(Duration(hours: int.parse(offset)));

      //set time property

      isDaytime = (now.hour > 6 && now.hour < 19 ? true : false) ;

      time = DateFormat.jm().format(now);


     // print(now);
    }


    catch (e) {

      print('caught error : $e');

      time = 'could not get the data';

    }
  }


}

