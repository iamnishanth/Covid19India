import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'statelist_screen.dart';
import 'statescreen.dart';
import 'faqpage.dart';
import 'aboutpage.dart';
import 'package:flutter/services.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'symptoms.dart';
import 'prevention.dart';
import 'covidfaq.dart';


class MyHomePage extends StatefulWidget {

  MyHomePage({this.data,this.districtData,this.dailyData});
  final data;
  final districtData;
  final dailyData;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

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
  var myDailyData;
  var noofstate;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  void updateUI(data,districtData,dailyData)async{
    setState(() {
      myData = data;
      myDistrictData = districtData;
      myDailyData = dailyData;
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
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    updateUI(widget.data,widget.districtData,widget.dailyData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF161625),
      key: _scaffoldKey,
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Text(
              "COVID19",
              style: TextStyle(
                fontFamily: 'Lato',
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white70
              )
            ),
            SizedBox(width: 5),
            Text(
              "INDIA",
              style: TextStyle(
                fontFamily: 'Lato',
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: Color(0xFFEB1555),
              ),
            ),
          ],
        ),
        backgroundColor: Color(0xFF1D1E33),
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white70,
          ),
          onPressed: () => _scaffoldKey.currentState.openDrawer(),
        )
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(
          canvasColor:  Color(0xFF161625),
        ),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.65,
          child: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'COVID19',
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white70
                          ),
                        ),
                        Text(
                          'INDIA',
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFEB1555),
                          ),
                        ),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFF1D1E33),
                  ),
                ),
                SizedBox(height: 50),
                ListTile(
                  title: Text(
                    'FAQ',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white70,
                    ),
                  ),
                  leading: Icon(
                    Icons.question_answer,
                    size: 25,
                    color: Colors.white70,
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return FaqPage();
                    }));
                  },
                ),
                ListTile(
                  title: Text(
                    'About',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white70
                    ),
                  ),
                  leading: Icon(
                    Icons.info_outline,
                    size: 25,
                    color: Colors.white70,
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return AboutPage();
                    }));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 4,
              child: CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  enlargeCenterPage: true,
                ),
                items: [
                  ReusableCard(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.fromLTRB(5, 20, 5, 10),
                    colour: Color(0xFF1D1E33),
                    cardChild: FittedBox(
                      child: Image.asset('images/symptoms.jpg')
                    ),
                    onPress: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                          return Symptoms();
                        }));
                    },
                  ),
                  ReusableCard(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.fromLTRB(5, 20, 5, 10),
                    colour: Color(0xFF1D1E33),
                    cardChild: FittedBox(
                      child: Image.asset('images/covid19.jpg')
                    ),
                    onPress: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return CovidFAQPage();
                      }));
                    },
                  ),
                  ReusableCard(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.fromLTRB(5, 20, 5, 10),
                    colour: Color(0xFF1D1E33),
                    cardChild: FittedBox(
                      child: Image.asset('images/prevention3.jpg')
                    ),
                    onPress: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return Prevention();
                      }));
                    },
                  )
                ]
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
                            width: MediaQuery.of(context).size.width * 0.5,
                            margin: EdgeInsets.fromLTRB(10, 10, 5, 5),
                            cardChild: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:<Widget>[
                                  FittedBox(
                                    child: AutoSizeText(
                                      "Confirmed",
                                      style: TextStyle(
                                        fontFamily: 'Lato',
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFFFE0739)
                                      ),
                                    ),
                                  ),
                                  SizedBox(height:MediaQuery.of(context).size.height*0.01),
                                  AutoSizeText(
                                    "[+$deltaConfirmed]",
                                    style:TextStyle(
                                      fontFamily: 'Lato',
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFFE0739).withOpacity(0.7)
                                    ),
                                  ),
                                  
                                  FittedBox(
                                    child: AutoSizeText(
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
                            width: MediaQuery.of(context).size.width * 0.5,
                            margin: EdgeInsets.fromLTRB(10, 10, 5, 5),
                            cardChild: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:<Widget>[
                                  FittedBox(
                                    child: AutoSizeText(
                                      "Recovered",
                                      style:TextStyle(
                                        fontFamily: 'Lato',
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF27A644)
                                      ), 
                                    ),
                                  ),
                                  SizedBox(height:MediaQuery.of(context).size.height*0.01),
                                  AutoSizeText(
                                    "[+$deltaRecovered]",
                                    style: TextStyle(
                                      fontFamily: 'Lato',
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF27A644).withOpacity(0.7)
                                    ), 
                                  ),
                                  FittedBox(
                                    child: AutoSizeText(
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
                            width: MediaQuery.of(context).size.width * 0.5,
                            margin: EdgeInsets.fromLTRB(5, 10, 10, 5),
                            cardChild: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:<Widget>[
                                  FittedBox(
                                    child: AutoSizeText(
                                      "Active",
                                      style: TextStyle(
                                        fontFamily: 'Lato',
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF007AFE)
                                      ), 
                                    ),
                                  ),
                                  SizedBox(height:MediaQuery.of(context).size.height*0.01),
                                  AutoSizeText(
                                    "",
                                    style: TextStyle(
                                      fontFamily: 'Lato',
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF007AFE)
                                    ), 
                                  ),
                                  FittedBox(
                                    child: AutoSizeText(
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
                            width: MediaQuery.of(context).size.width * 0.5,
                            margin: EdgeInsets.fromLTRB(5, 10, 10, 5),
                            cardChild: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:<Widget>[
                                  FittedBox(
                                    child: AutoSizeText(
                                      "Deaths",
                                      style: TextStyle(
                                        fontFamily: 'Lato',
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF6B747C)
                                      ), 
                                    ),
                                  ),
                                  SizedBox(height:MediaQuery.of(context).size.height*0.01),
                                  FittedBox(
                                    child: AutoSizeText(
                                      "[+$deltaDeath]",
                                      style: TextStyle(
                                        fontFamily: 'Lato',
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF6B747C).withOpacity(0.7)
                                      ), 
                                    ),
                                  ),
                                  FittedBox(
                                    child: AutoSizeText(
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
                    AutoSizeText(
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
                          return StateListScreen(data: myData , districtData: myDistrictData,dailyData: myDailyData);
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
                      width: MediaQuery.of(context).size.width * 0.47,
                      margin: EdgeInsets.only(right:10),
                      alignment: Alignment.center,
                      colour: Color(0xFF1D1E33),
                      cardChild: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            FittedBox(
                              child: AutoSizeText(
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
                            SizedBox(height:MediaQuery.of(context).size.height*0.01),
                            FittedBox(
                              child: AutoSizeText(
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
                            SizedBox(height:MediaQuery.of(context).size.height*0.01),
                            FittedBox(
                              child: AutoSizeText(
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
                        String stateName = myData['statewise'][index+1]['state'].toString();
                        int indexx = index + 1;
                        int i = 0;
                        for(noofstate in myDistrictData){
                          if(myDistrictData[i]['state'] == stateName){
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return StateScreen(data: myData,districtData: myDistrictData,dailyData: myDailyData, stateName: stateName,index: indexx);
                            }));
                          }
                          i++;
                        }
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