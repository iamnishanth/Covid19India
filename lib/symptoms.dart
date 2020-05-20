import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

class Symptoms extends StatefulWidget {
  @override
  _SymptomsState createState() => _SymptomsState();
}

class _SymptomsState extends State<Symptoms> {

  List<Slide> slides = new List();

  @override
  void initState() {
    super.initState();

    slides.add(
      new Slide(
        title: "Dry Coughing",
        styleTitle: TextStyle(
          fontFamily: 'Lato',
          fontSize: 30,
          fontWeight: FontWeight.bold
        ),
        description: "A sudden, forceful hacking sound to release air and clear an irritation in the throat or airway.",
        styleDescription: TextStyle(
          fontFamily: 'Lato',
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),
        pathImage: "images/coughing.svg",
        backgroundColor: Color(0xFF161625),
        heightImage: 250,
        widthImage: 250,
      ),
    );
    slides.add(
      new Slide(
        title: "Fever",
        styleTitle: TextStyle(
          fontFamily: 'Lato',
          fontSize: 30,
          fontWeight: FontWeight.bold
        ),
        description: "A temporary increase in average body temperature of 98.6°F (37°C).",
        styleDescription: TextStyle(
          fontFamily: 'Lato',
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),
        pathImage: "images/fever.svg",
        backgroundColor: Color(0xFF161625),
        heightImage: 250,
        widthImage: 250,
      ),
    );
    slides.add(
      new Slide(
        title: "Tiredness",
        styleTitle: TextStyle(
          fontFamily: 'Lato',
          fontSize: 30,
          fontWeight: FontWeight.bold
        ),
        description:"Feeling overtired, with low energy and a strong desire to sleep that interferes with normal daily activities.",
        styleDescription: TextStyle(
          fontFamily: 'Lato',
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),
        pathImage: "images/tired.svg",
        backgroundColor: Color(0xFF161625),
        heightImage: 250,
        widthImage: 250,
      ),
    );
    slides.add(
      new Slide(
        title: "Aches and Pains",
        styleTitle: TextStyle(
          fontFamily: 'Lato',
          fontSize: 30,
          fontWeight: FontWeight.bold
        ),
        description: "A continuous or prolonged dull pain in a part of one's body.",
        styleDescription: TextStyle(
          fontFamily: 'Lato',
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),
        pathImage: "images/achespains.svg",
        backgroundColor: Color(0xFF161625),
        heightImage: 250,
        widthImage: 250,
      ),
    );
    slides.add(
      new Slide(
        title: "Sore Throat",
        styleTitle: TextStyle(
          fontFamily: 'Lato',
          fontSize: 30,
          fontWeight: FontWeight.bold
        ),
        description: "Pain or irritation in the throat that can occur with or without swallowing, often accompanies infections, such as a cold or flu.",
        styleDescription: TextStyle(
          fontFamily: 'Lato',
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),
        pathImage: "images/sorethroat.svg",
        backgroundColor: Color(0xFF161625),
        heightImage: 250,
        widthImage: 250,
      ),
    );
    slides.add(
      new Slide(
        title: "Shortness of Breath",
        styleTitle: TextStyle(
          fontFamily: 'Lato',
          fontSize: 30,
          fontWeight: FontWeight.bold
        ),
        description: "Difficult or laboured breathing.",
        styleDescription: TextStyle(
          fontFamily: 'Lato',
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),
        pathImage: "images/breathing.svg",
        backgroundColor: Color(0xFF161625),
        heightImage: 250,
        widthImage: 250,
      ),
    );
    slides.add(
      new Slide(
        title: "Headache",
        styleTitle: TextStyle(
          fontFamily: 'Lato',
          fontSize: 30,
          fontWeight: FontWeight.bold
        ),
        description: "A painful sensation in any part of the head, ranging from sharp to dull, that may occur with other symptoms.",
        styleDescription: TextStyle(
          fontFamily: 'Lato',
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),
        pathImage: "images/headache.svg",
        backgroundColor: Color(0xFF161625),
        heightImage: 250,
        widthImage: 250,
      ),
    );
  }

  void onDonePress() {
    Navigator.pop(context);
  }



  @override
  Widget build(BuildContext context) {
    return new IntroSlider(
      slides: this.slides,
      onDonePress: this.onDonePress,
      colorDot: Colors.white70,
    );
  }
}