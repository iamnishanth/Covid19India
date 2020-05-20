import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'chart.dart';

class StateScreen extends StatefulWidget {

  StateScreen({this.data,this.districtData,this.stateName,this.index,this.dailyData});

  final data;
  final districtData;
  final dailyData;
  final String stateName;
  final int index;


  @override
  _StateScreenState createState() => _StateScreenState();
}

class _StateScreenState extends State<StateScreen> {

  var myData;
  var myDistrictData;
  var myDailyData;
  String myStateName;
  String myStateCode;
  int myIndex;
  var count = 0;
  var filteredData;
  var filterCounter = 0;
  var items;
  List <Widget> districtsList = [];
  List <FlSpot> spots = [];
  List<Color> colors;
  var asofDate;
  var activeRate;
  var recoveryRate;
  var mortalityRate;

  void setData(data,districtData,dailyData,stateName,index){
    setState(() {
      myData = data;
      myDistrictData = districtData;
      myDailyData = dailyData;
      myStateName = stateName;
      myIndex = index;
      activeRate = ((double.parse(myData['statewise'][myIndex]['active']))/(double.parse(myData['statewise'][myIndex]['confirmed'])))*100;
      recoveryRate = ((double.parse(myData['statewise'][myIndex]['recovered']))/(double.parse(myData['statewise'][myIndex]['confirmed'])))*100;
      mortalityRate = ((double.parse(myData['statewise'][myIndex]['deaths']))/(double.parse(myData['statewise'][myIndex]['confirmed'])))*100;
      asofDate = myData['statewise'][myIndex]['lastupdatedtime'];
    });
  }

  void initState(){
    super.initState();
    setData(widget.data, widget.districtData, widget.dailyData, widget.stateName, widget.index);
    counter(myDistrictData);
    filteredDataCounter();
    buildDistrictList();
    chartData("Confirmed",Color(0xFFFE0739));
    
  }

  void counter(myDistrictData){
    for(items in myDistrictData){
      setState(() {
        count++;
      });
    }
    for(var i=0;i<count;i++){
      if(myDistrictData[i]['state'] == myStateName){
        setState(() {
          myStateCode = myDistrictData[i]['statecode'];
          myStateCode = myStateCode.toLowerCase();
          filteredData = myDistrictData[i]['districtData'];
        });
      }
    }
  }

  void filteredDataCounter(){
    for(items in filteredData){
      setState(() {
        filterCounter++;
      }); 
    }
  }

  void chartData(String detail,Color color){
    setState(() {
      spots = [];
      colors = [];
      colors.add(color);
      int i = 0;
      for(items in myDailyData['states_daily']){
        if(myDailyData['states_daily'][i]['status'] == detail){
          double first = i.toDouble();
          double second;
          if(myDailyData['states_daily'][i][myStateCode] == ''){
            second = 0;
          }
          else{
            second = double.parse(myDailyData['states_daily'][i][myStateCode]);
          }
          spots.add(
            FlSpot(first,second)
          );
        }
        i++;
      }
      

      while(spots.length>31){
        spots.removeAt(0);
      }
    });  
  }
  
  void activeChartData(Color color){
    setState(() {
      spots = [];
      colors = [];
      colors.add(color);
      int i = 0;
      int  j = 0;
      for(items in myDailyData['states_daily']){
        if(myDailyData['states_daily'][i]['status'] == 'Confirmed' && myDailyData['states_daily'][i+1]['status'] == 'Recovered' && myDailyData['states_daily'][i+2]['status'] == 'Deceased' ){
          
          double confirmed;
          double recovered = double.parse(myDailyData['states_daily'][i+1][myStateCode]);
          double deaths = double.parse(myDailyData['states_daily'][i+2][myStateCode]);

          if(myDailyData['states_daily'][i][myStateCode] == ''){
            confirmed = 0;
          }
          else{
            confirmed = double.parse(myDailyData['states_daily'][i][myStateCode]);
          }
          double first = j.toDouble();
          double second = confirmed - recovered - deaths;
          spots.add(
            FlSpot(first,second)
          );
        }
        i++;
        j++;
      }
      while(spots.length>31){
        spots.removeAt(0);
      }
    });  
  }

  void buildDistrictList(){
    for(var index=0;index<filterCounter;index++){
      setState(() {
        districtsList.add(
          ReusableCard(
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
                    filteredData[index]['district'].toString(),
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
                            "[+${filteredData[index]['delta']['confirmed'].toString()}]",
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
                            filteredData[index]['confirmed'].toString(),
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
                            filteredData[index]['active'].toString(),
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
                            "[+${filteredData[index]['delta']['recovered'].toString()}]",
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
                            filteredData[index]['recovered'].toString(),
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
                            "[+${filteredData[index]['delta']['deceased'].toString()}]",
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
                            filteredData[index]['deceased'].toString(),
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
          onPress: (){},
        ),
        );
      });
    }
  }



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xFF161625),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.fromLTRB(10, 25, 10, 25),
          child: ListView(
            children: <Widget>[
              Text(
                myStateName,
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: ReusableCard(
                      colour: Color(0xFF1D1E33),
                      margin: EdgeInsets.fromLTRB(2, 10, 2, 5),
                      height: 110,
                      padding: EdgeInsets.all(5),
                      cardChild: Center(
                        child: Column(
                          children:<Widget>[
                            SizedBox(height: 15),
                            FittedBox(
                              child: Text(
                                "Confirmed",
                                style: TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFFE0739).withOpacity(0.7)
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            FittedBox(
                              child: Text(
                                "[+${myData['statewise'][myIndex]['deltaconfirmed'].toString()}]",
                                style:TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFFE0739).withOpacity(0.7)
                                ),
                              ),
                            ),
                            SizedBox(height: 3),
                            FittedBox(
                              child: Text(
                                myData['statewise'][myIndex]['confirmed'].toString(),
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
                      onPress: (){
                        chartData("Confirmed",Color(0xFFFE0739));
                      },
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ReusableCard(
                      colour: Color(0xFF1D1E33),
                      height: 110,
                      margin: EdgeInsets.fromLTRB(2, 10, 2, 5),
                      padding: EdgeInsets.all(5),
                      cardChild: Center(
                        child: Column(
                          children:<Widget>[
                            SizedBox(height: 15),
                            FittedBox(
                              child: Text(
                                "Active",
                                style: TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF007AFE).withOpacity(0.7)
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            FittedBox(
                              child: Text(
                                " ",
                                style:TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF007AFE).withOpacity(0.7)
                                ),
                              ),
                            ),
                            SizedBox(height: 3),
                            FittedBox(
                              child: Text(
                                myData['statewise'][myIndex]['active'].toString(),
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
                      onPress: (){
                        activeChartData(Color(0xFF007AFE));
                      },
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ReusableCard(
                      height: 110,
                      colour: Color(0xFF1D1E33),
                      margin: EdgeInsets.fromLTRB(2, 10, 2, 5),
                      padding: EdgeInsets.all(5),
                      cardChild: Center(
                        child: Column(
                          children:<Widget>[
                            SizedBox(height: 15),
                            FittedBox(
                              child: Text(
                                "Recovered",
                                style: TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF27A644).withOpacity(0.7)
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            FittedBox(
                              child: Text(
                                "[+${myData['statewise'][myIndex]['deltarecovered'].toString()}]",
                                style:TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF27A644).withOpacity(0.7)
                                ),
                              ),
                            ),
                            SizedBox(height: 3),
                            FittedBox(
                              child: Text(
                                myData['statewise'][myIndex]['recovered'].toString(),
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
                      onPress: (){
                        chartData("Recovered",Color(0xFF27A644));
                      },
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ReusableCard(
                      colour: Color(0xFF1D1E33),
                      height: 110,
                      margin: EdgeInsets.fromLTRB(2, 10, 2, 5),
                      padding: EdgeInsets.all(5),
                      cardChild: Center(
                        child: Column(
                          children:<Widget>[
                            SizedBox(height: 15),
                            FittedBox(
                              child: Text(
                                "Deaths",
                                style: TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF6B747C).withOpacity(0.7)
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            FittedBox(
                              child: Text(
                                "[+${myData['statewise'][myIndex]['deltadeaths'].toString()}]",
                                style:TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF6B747C).withOpacity(0.7)
                                ),
                              ),
                            ),
                            SizedBox(height: 3),
                            FittedBox(
                              child: Text(
                                myData['statewise'][myIndex]['deaths'].toString(),
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
                      onPress: (){
                        chartData("Deceased",Color(0xFF6B747C));
                      }
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              Text(
                "Last updated on $asofDate ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Lato',
                  color: Colors.white70,
                  fontSize: 10,
                ),
              ),
              SizedBox(height:15),
              Chart(mySpots: spots,chartColor:colors),
              SizedBox(height:5),
              Text(
                "* Last 31 days",
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontFamily: 'Lato',
                  color: Colors.white70,
                  fontSize: 8,
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      height: 200,
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      colour: Color(0xFF1D1E33),
                      cardChild: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Active",
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF007AFE).withOpacity(0.5),
                              ),
                            ),
                            SizedBox(height:10),
                            Text(
                              "${activeRate.toStringAsFixed(1)} %",
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Color(0xFF007AFE),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "For every 100 confirmed cases, ${activeRate.toStringAsFixed(0)} are currently infected.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Color(0xFF007AFE).withOpacity(0.5),
                              ),
                            )
                          ],
                        ),
                      ),
                      onPress: (){
                        activeChartData(Color(0xFF007AFE));
                      },
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      height: 200,
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      colour: Color(0xFF1D1E33),
                      cardChild: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Recovery Rate",
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF27A644).withOpacity(0.5),
                              ),
                            ),
                            SizedBox(height:10),
                            Text(
                              "${recoveryRate.toStringAsFixed(1)} %",
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Color(0xFF27A644),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "For every 100 confirmed cases, ${recoveryRate.toStringAsFixed(0)} have recovered from the virus.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Color(0xFF27A644).withOpacity(0.5),
                              ),
                            )
                          ],
                        ),
                      ),
                      onPress: (){
                        chartData("Recovered",Color(0xFF27A644));
                      },
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      height: 200,
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      colour: Color(0xFF1D1E33),
                      cardChild: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Mortality Rate",
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF6B747C).withOpacity(0.5),
                              ),
                            ),
                            SizedBox(height:10),
                            Text(
                              "${mortalityRate.toStringAsFixed(1)} %",
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Color(0xFF6B747C),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "For every 100 confirmed cases, ${mortalityRate.toStringAsFixed(0)} have passed away from the virus.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Color(0xFF6B747C).withOpacity(0.5),
                              ),
                            )
                          ],
                        ),
                      ),
                      onPress: (){
                        chartData("Deceased",Color(0xFF6B747C));
                      }
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  "Districts",
                  style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70,
                    letterSpacing: .5,
                  ), 
                ),
                initiallyExpanded: false,
                children: [
                  Column(
                    children: <Widget>[
                      ListView(
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        children: districtsList,
                      )
                    ], 
                  ),
                ],
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}

