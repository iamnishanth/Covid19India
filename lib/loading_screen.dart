import 'package:covid19india/homepage.dart';
import 'package:flutter/material.dart';
import 'network.dart';
import 'package:connectivity/connectivity.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  NetworkHandler networkHandler = NetworkHandler();
  var data;
  var districtData;
  var dailyData;
  void setData()async{
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      Fluttertoast.showToast(
          msg: "This App Requires an Internet Connection. Restart the App.",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Color(0xFFEB1555),
          textColor: Colors.white,
          fontSize: 16.0
      );
      return;
    }
    data = await networkHandler.getData();
    districtData = await networkHandler.getDistrictData();
    dailyData = await networkHandler.getDailyData();
    if(data == int || districtData == int){
      Fluttertoast.showToast(
          msg: "There was an error connecting to the server",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Color(0xFFEB1555),
          textColor: Colors.white,
          fontSize: 16.0
      );
      return;
    }
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
      return MyHomePage(data: data, districtData: districtData, dailyData: dailyData);
    }));
  }
   void initState(){
    super.initState();
    setData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF161625),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 300),
              Text(
                "COVID19",
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                )
              ),
              Text(
                "INDIA",
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFEB1555),
                ),
              ),
              SizedBox(height: 300),
            ],
          )
        )
      ),
    );
  }
}