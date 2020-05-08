import 'package:flutter/material.dart';
import 'reusable_card.dart';

class StateListScreen extends StatefulWidget {

  StateListScreen({this.data});
  final data;

  @override
  _StateListScreenState createState() => _StateListScreenState();
}

class _StateListScreenState extends State<StateListScreen> {

  var myData;
  int count = 0;

  void setData(data){
    setState(() {
      myData = data;
    });
  }

  void initState(){
    super.initState();
    setData(widget.data);
    counter(myData);
  }

  void counter(myData){
    for(var state in myData['statewise']){
      count++;
    }
    print(count);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF161625),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color(0xFF161625),
                  ),
                child: ListView.builder(
                  itemCount: count-1,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return ReusableCard(
                      width: 195,
                      margin: EdgeInsets.only(top:20),
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
                      )
                    );
                  },
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}