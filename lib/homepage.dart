import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'network.dart';
import 'statelist_screen.dart';

class MyHomePage extends StatefulWidget {

  MyHomePage({this.data,this.districtData});
  final data;
  final districtData;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  NetworkHandler networkHandler = NetworkHandler();
  int count=0;
  String totalConfirmed = "";
  String totalActive = "";
  String totalDeath = "";
  String totalRecovered = "";
  String deltaConfirmed = "";
  String deltaDeath = "";
  String deltaRecovered = "";
  var myData;
  var myDistrictData;

  void updateUI(data,districtData)async{
    setState(() {
      myData = data;
      myDistrictData = districtData;
      totalConfirmed = data['statewise'][0]['confirmed'];
      totalActive = data['statewise'][0]['active'];
      totalRecovered = data['statewise'][0]['recovered'];
      totalDeath = data['statewise'][0]['deaths'];
      deltaConfirmed = data['statewise'][0]['deltaconfirmed'];
      deltaDeath = data['statewise'][0]['deltadeaths'];
      deltaRecovered = data['statewise'][0]['deltarecovered'];
    });
  }

  @override
  void initState(){
    super.initState();
    updateUI(widget.data,widget.districtData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF161625),
      body: SafeArea(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 4,
              child: ReusableCard(
                colour: Color(0xFF1D1E33),
                margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                cardChild: Center(
                  child: Text(
                    "COVID19 INDIA",
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white70,
                    ),
                  ),
                ),
                onPress: (){},
              ),
            ),
            Expanded(
              flex: 5,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children:<Widget>[
                        Expanded(
                          child: ReusableCard(
                            colour: Color(0xFF1D1E33),
                            margin: EdgeInsets.fromLTRB(10, 10, 5, 5),
                            cardChild: Center(
                              child: Column(
                                children:<Widget>[
                                  SizedBox(height: 15),
                                  Text(
                                    "CONFIRMED",
                                    style: TextStyle(
                                      fontFamily: 'Lato',
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFFE0739)
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "[+$deltaConfirmed]",
                                    style:TextStyle(
                                      fontFamily: 'Lato',
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFFE0739)
                                    ),
                                  ),
                                  
                                  FittedBox(
                                    child: Text(
                                      totalConfirmed,
                                      style: TextStyle(
                                        fontFamily: 'Lato',
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFFFE0739)
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: ReusableCard(
                            colour: Color(0xFF1D1E33),
                            margin: EdgeInsets.fromLTRB(10, 10, 5, 5),
                            cardChild: Center(
                              child: Column(
                                children:<Widget>[
                                  SizedBox(height: 15),
                                  Text(
                                    "RECOVERED",
                                    style:TextStyle(
                                      fontFamily: 'Lato',
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF27A644)
                                    ), 
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "[+$deltaRecovered]",
                                    style: TextStyle(
                                      fontFamily: 'Lato',
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF27A644)
                                    ), 
                                  ),
                                  FittedBox(
                                    child: Text(
                                      totalRecovered,
                                      style:TextStyle(
                                        fontFamily: 'Lato',
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF27A644)
                                      ), 
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ], 
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children:<Widget>[
                        Expanded(
                          child: ReusableCard(
                            colour: Color(0xFF1D1E33),
                            margin: EdgeInsets.fromLTRB(5, 10, 10, 5),
                            cardChild: Center(
                              child: Column(
                                children:<Widget>[
                                  SizedBox(height: 15),
                                  Text(
                                    "ACTIVE",
                                    style: TextStyle(
                                      fontFamily: 'Lato',
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF007AFE)
                                    ), 
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "",
                                    style: TextStyle(
                                      fontFamily: 'Lato',
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF007AFE)
                                    ), 
                                  ),
                                  FittedBox(
                                    child: Text(
                                      totalActive,
                                      style:TextStyle(
                                        fontFamily: 'Lato',
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF007AFE)
                                      ), 
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: ReusableCard(
                            colour: Color(0xFF1D1E33),
                            margin: EdgeInsets.fromLTRB(5, 10, 10, 5),
                            cardChild: Center(
                              child: Column(
                                children:<Widget>[
                                  SizedBox(height: 15),
                                  Text(
                                    "DEATHS",
                                    style: TextStyle(
                                      fontFamily: 'Lato',
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF6B747C)
                                    ), 
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "[+$deltaDeath]",
                                    style: TextStyle(
                                      fontFamily: 'Lato',
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF6B747C)
                                    ), 
                                  ),
                                  FittedBox(
                                    child: Text(
                                      totalDeath,
                                        style: TextStyle(
                                        fontFamily: 'Lato',
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF6B747C)
                                      ), 
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ], 
                    ),
                  ),
                ],
              )
            ),
            Expanded(
              child: ReusableCard(
                colour: Color(0xFF161625),
                margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                cardChild: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Top States",
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white70,
                        letterSpacing: .5,
                      ), 
                    ),
                    ReusableCard(
                      colour: Color(0xFF161625),
                      cardChild: Text(
                        "View all",
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.white70,
                          letterSpacing: .5,
                        ), 
                      ),
                      onPress: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return StateListScreen(data: myData , districtData: myDistrictData);
                        }));
                      },
                    )
                  ],
                ),
              )
            ),
            Expanded(
              flex: 4,
              child: Container(
                margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xFF161625),
                ),
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return ReusableCard(
                      width: 195,
                      margin: EdgeInsets.only(right:10),
                      alignment: Alignment.center,
                      colour: Color(0xFF1D1E33),
                      cardChild: Center(
                        child: Column(
                          children: <Widget>[
                            SizedBox(height:40),
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
                            SizedBox(height:10),
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
                            SizedBox(height:10),
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
                      ),
                      onPress: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return StateListScreen(data: myData,districtData: myDistrictData);
                        }));
                      },
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}