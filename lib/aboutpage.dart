import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF161625),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              
              CircleAvatar(
                backgroundColor: Color(0xFF1D1E33),
                radius: 50,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "COVID19",
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white70
                      )
                    ),
                    SizedBox(width: 5),
                    Text(
                      "INDIA",
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
              SizedBox(height: 50),
              Center(
                child: Text(
                  "This is an open source Flutter Project. You can find the full source code for this app on",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70
                  )
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                child: Center(
                  child: Text(
                    "https://github.com/iamnishanth/Covid19India",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white70,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                onTap: () async{
                  if (await canLaunch("https://github.com/iamnishanth/Covid19India"))
                    launch("https://github.com/iamnishanth/Covid19India");
                },
              )
            ],
          ),
        )
      ),
    );
  }
}