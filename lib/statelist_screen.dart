import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import 'reusable_card.dart';
import 'statescreen.dart';

class StateListScreen extends StatefulWidget {

  StateListScreen({this.data,this.districtData,this.dailyData});
  final data;
  final districtData;
  final dailyData;

  @override
  _StateListScreenState createState() => _StateListScreenState();
}

class _StateListScreenState extends State<StateListScreen> {

  var myData;
  var myDistrictData;
  var myDailyData;
  var state;
  int count = 0;
  var noofstate;

  void setData(data,districtData,dailyData){
    setState(() {
      myData = data;
      myDistrictData = districtData;
      myDailyData = dailyData;
    });
  }

  void initState(){
    super.initState();
    setData(widget.data,widget.districtData,widget.dailyData);
    counter(myData);
  }

  void counter(myData){
    for(state in myData['statewise']){
      count++;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF161625),
      body: SafeArea(
        child: AnimationLimiter(
          child: ListView.builder(
            padding: const EdgeInsets.all(8.0),
            itemCount: count-1,
            itemBuilder: (BuildContext context, int index) {
              return AnimationConfiguration.staggeredList(
                position: index,
                duration: const Duration(milliseconds: 700),
                child: SlideAnimation(
                  verticalOffset: 44.0,
                  child: FadeInAnimation(
                    child: ReusableCard(
                      width: 195,
                      margin: EdgeInsets.only(top:10),
                      alignment: Alignment.center,
                      colour: Color(0xFF1D1E33),
                      cardChild: Center(
                        child: Column(
                          children: <Widget>[
                            SizedBox(height:10),
                            FittedBox(
                              child: Text(
                                myData['statewise'][index+1]['state'].toString(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white70,
                                  letterSpacing: .5,
                                ), 
                              ),
                            ),
                            SizedBox(height:20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    FittedBox(
                                      child: Text(
                                        "[+${myData['statewise'][index+1]['deltaconfirmed'].toString()}]",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'Lato',
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFFFE0739),
                                          letterSpacing: .5,
                                        ), 
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    FittedBox(
                                      child: Text(
                                        myData['statewise'][index+1]['confirmed'].toString(),
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'Lato',
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFFFE0739),
                                          letterSpacing: .5,
                                        ), 
                                      ),
                                    ),
                                  ], 
                                ),
                                Column(
                                  children: <Widget>[
                                    FittedBox(
                                      child: Text(
                                        " ",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'Lato',
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF007AFE),
                                          letterSpacing: .5,
                                        ), 
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    FittedBox(
                                      child: Text(
                                        myData['statewise'][index+1]['active'].toString(),
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'Lato',
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF007AFE),
                                          letterSpacing: .5,
                                        ), 
                                      ),
                                    ),
                                  ], 
                                ),
                                Column(
                                  children: <Widget>[
                                    FittedBox(
                                      child: Text(
                                        "[+${myData['statewise'][index+1]['deltarecovered'].toString()}]",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'Lato',
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF27A644),
                                          letterSpacing: .5,
                                        ), 
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    FittedBox(
                                      child: Text(
                                        myData['statewise'][index+1]['recovered'].toString(),
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'Lato',
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF27A644),
                                          letterSpacing: .5,
                                        ), 
                                      ),
                                    ),
                                  ], 
                                ),
                                Column(
                                  children: <Widget>[
                                    FittedBox(
                                      child: Text(
                                        "[+${myData['statewise'][index+1]['deltadeaths'].toString()}]",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'Lato',
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF6B747C),
                                          letterSpacing: .5,
                                        ), 
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    FittedBox(
                                      child: Text(
                                        myData['statewise'][index+1]['deaths'].toString(),
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'Lato',
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF6B747C),
                                          letterSpacing: .5,
                                        ), 
                                      ),
                                    ),
                                  ], 
                                ),
                              ], 
                            ),
                            SizedBox(height:20),
                          ],
                        ),
                      ),
                      onPress: (){
                        String stateName = myData['statewise'][index+1]['state'].toString();
                        int indexx = index + 1;
                        int i = 0;
                        for(noofstate in myDistrictData){
                          if(myDistrictData[i]['state'] == stateName){
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return StateScreen(data: myData, districtData: myDistrictData, dailyData: myDailyData, stateName: stateName, index: indexx);
                            }));
                          }
                          i++;
                        }
                      },
                    )
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}