import 'package:flutter/material.dart';
import 'reusable_card.dart';

class FaqPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF161625),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top:25,bottom: 25),
              child: Text(
                "FAQ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.white70
                ),
              ),
            ),
            ReusableCard(
              colour: Color(0xFF1D1E33),
              margin: EdgeInsets.all(10),
              cardChild: ExpansionTile(
                title: Text(
                  "What is your data source ?",
                  style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70,
                    letterSpacing: .5,
                  ),
                ),
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      "Every data in this app is collected from Covid19india.org API",
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white70,
                        letterSpacing: .5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ReusableCard(
              colour: Color(0xFF1D1E33),
              margin: EdgeInsets.all(10),
              cardChild: ExpansionTile(
                title: Text(
                  "How covid19india.org collects data ?",
                  style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70,
                    letterSpacing: .5,
                  ),
                ),
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      "covid19india.org uses state bulletins and official handles to update their numbers. The data is validated by a group of volunteers and published into a Google sheet and an API. API is available for all at api.covid19india.org.",
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white70,
                        letterSpacing: .5,
                      ),
                    ),
                  ),
                  
                ],
              ),
            ),
            ReusableCard(
              colour: Color(0xFF1D1E33),
              margin: EdgeInsets.all(10),
              cardChild: ExpansionTile(
                title: Text(
                  "Why does this app have more positive count than MoH? ?",
                  style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70,
                    letterSpacing: .5,
                  ),
                ),
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      "MoHFW updates the data at a scheduled time. However, covid19india.org update them based on state press bulletins, official (CM, Health M) handles, PBI, Press Trust of India, ANI reports. These are generally more recent.",
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white70,
                        letterSpacing: .5,
                      ),
                    ),
                  ),
                  
                ],
              ),
            ),
            ReusableCard(
              colour: Color(0xFF1D1E33),
              margin: EdgeInsets.all(10),
              cardChild: ExpansionTile(
                title: Text(
                  "Who are you ?",
                  style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70,
                    letterSpacing: .5,
                  ),
                ),
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Color(0xFF1D1E33),
                          backgroundImage: AssetImage('images/instalogo.png'),
                        )
                      ),
                      Text(
                        "@iamnishanth77",
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white70,
                          letterSpacing: .5,
                        ),
                      )
                    ],
                  ),
                  
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}