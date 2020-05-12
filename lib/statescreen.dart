import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'chart.dart';

class StateScreen extends StatefulWidget {
  @override
  _StateScreenState createState() => _StateScreenState();
}

class _StateScreenState extends State<StateScreen> {
  List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xFF161625),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top:25,bottom:25),
          child: ListView(
            children: <Widget>[
              Text(
                "Tamil Nadu",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.white70,
                  letterSpacing: .5,
                ), 
              ),
              SizedBox(height:50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: ReusableCard(
                      colour: Color(0xFF1D1E33),
                      margin: EdgeInsets.fromLTRB(5, 10, 5, 5),
                      height: 110,
                      padding: EdgeInsets.all(5),
                      cardChild: Center(
                        child: Column(
                          children:<Widget>[
                            SizedBox(height: 15),
                            FittedBox(
                              child: Text(
                                "CONFIRMED",
                                style: TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFFE0739)
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            FittedBox(
                              child: Text(
                                "[+323]",
                                style:TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFFE0739)
                                ),
                              ),
                            ),
                            SizedBox(height: 3),
                            FittedBox(
                              child: Text(
                                "234234",
                                style: TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 25,
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
                    flex: 1,
                    child: ReusableCard(
                      colour: Color(0xFF1D1E33),
                      height: 110,
                      margin: EdgeInsets.fromLTRB(5, 10, 5, 5),
                      padding: EdgeInsets.all(5),
                      cardChild: Center(
                        child: Column(
                          children:<Widget>[
                            SizedBox(height: 15),
                            FittedBox(
                              child: Text(
                                "ACTIVE",
                                style: TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF007AFE)
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            FittedBox(
                              child: Text(
                                "[+323]",
                                style:TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF007AFE)
                                ),
                              ),
                            ),
                            SizedBox(height: 3),
                            FittedBox(
                              child: Text(
                                "234234",
                                style: TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 25,
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
                    flex: 1,
                    child: ReusableCard(
                      height: 110,
                      colour: Color(0xFF1D1E33),
                      margin: EdgeInsets.fromLTRB(5, 10, 5, 5),
                      padding: EdgeInsets.all(5),
                      cardChild: Center(
                        child: Column(
                          children:<Widget>[
                            SizedBox(height: 15),
                            FittedBox(
                              child: Text(
                                "RECOVERED",
                                style: TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF27A644)
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            FittedBox(
                              child: Text(
                                "[+323]",
                                style:TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF27A644)
                                ),
                              ),
                            ),
                            SizedBox(height: 3),
                            FittedBox(
                              child: Text(
                                "234234",
                                style: TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 25,
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
                  Expanded(
                    flex: 1,
                    child: ReusableCard(
                      colour: Color(0xFF1D1E33),
                      height: 110,
                      margin: EdgeInsets.fromLTRB(5, 10, 5, 5),
                      padding: EdgeInsets.all(5),
                      cardChild: Center(
                        child: Column(
                          children:<Widget>[
                            SizedBox(height: 15),
                            FittedBox(
                              child: Text(
                                "DEATHS",
                                style: TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF6B747C)
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            FittedBox(
                              child: Text(
                                "[+323]",
                                style:TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF6B747C)
                                ),
                              ),
                            ),
                            SizedBox(height: 3),
                            FittedBox(
                              child: Text(
                                "234234",
                                style: TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF6B747C)
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Chart(),
            ],
          ),
        ),
      ),
    );
  }
}
