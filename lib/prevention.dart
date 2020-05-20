import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

class Prevention extends StatefulWidget {
  @override
  _PreventionState createState() => _PreventionState();
}

class _PreventionState extends State<Prevention> {

  List<Slide> slides = new List();

  @override
  void initState() {
    super.initState();

    slides.add(
      new Slide(
        title: "Washing Hands",
        styleTitle: TextStyle(
          fontFamily: 'Lato',
          fontSize: 30,
          fontWeight: FontWeight.bold
        ),
        description: "Regularly and thoroughly clean your hands with an alcohol-based hand rub or wash them with soap and water. Why? Washing your hands with soap and water or using alcohol-based hand rub kills viruses that may be on your hands.",
        styleDescription: TextStyle(
          fontFamily: 'Lato',
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),
        pathImage: "images/handwash.svg",
        backgroundColor: Color(0xFF161625),
        heightImage: 250,
        widthImage: 250,
      ),
    );
    slides.add(
      new Slide(
        title: "Maintain Distance",
        styleTitle: TextStyle(
          fontFamily: 'Lato',
          fontSize: 30,
          fontWeight: FontWeight.bold
        ),
        description: "Maintain at least 1 metre distance between yourself and others. Why? When someone coughs, sneezes, or speaks they spray small liquid droplets from their nose or mouth which may contain virus. If you are too close, you can breathe in the droplets, including the COVID-19 virus if the person has the disease.",
        styleDescription: TextStyle(
          fontFamily: 'Lato',
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),
        pathImage: "images/distance.svg",
        backgroundColor: Color(0xFF161625),
        heightImage: 250,
        widthImage: 250,
      ),
    );
    slides.add(
      new Slide(
        title: "Avoid Touching Your Face",
        styleTitle: TextStyle(
          fontFamily: 'Lato',
          fontSize: 30,
          fontWeight: FontWeight.bold
        ),
        description:"Avoid touching eyes, nose and mouth. Why? Hands touch many surfaces and can pick up viruses. Once contaminated, hands can transfer the virus to your eyes, nose or mouth. From there, the virus can enter your body and infect you.",
        styleDescription: TextStyle(
          fontFamily: 'Lato',
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),
        pathImage: "images/facepalm.png",
        backgroundColor: Color(0xFF161625),
        heightImage: 250,
        widthImage: 250,
      ),
    );
    slides.add(
      new Slide(
        title: "Wear Mask",
        styleTitle: TextStyle(
          fontFamily: 'Lato',
          fontSize: 30,
          fontWeight: FontWeight.bold
        ),
        description: "Masks are effective only when used in combination with frequent hand-cleaning with alcohol-based hand rub or soap and water. If you wear a mask, then you must know how to use it and dispose of it properly.",
        styleDescription: TextStyle(
          fontFamily: 'Lato',
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),
        pathImage: "images/manhealth.png",
        backgroundColor: Color(0xFF161625),
        heightImage: 250,
        widthImage: 250,
      ),
    );
    slides.add(
      new Slide(
        title: "Cover",
        styleTitle: TextStyle(
          fontFamily: 'Lato',
          fontSize: 30,
          fontWeight: FontWeight.bold
        ),
        description: "Make sure you, and the people around you, follow good respiratory hygiene. This means covering your mouth and nose with your bent elbow or tissue when you cough or sneeze. Then dispose of the used tissue immediately and wash your hands. Why? Droplets spread virus. By following good respiratory hygiene, you protect the people around you from viruses such as cold, flu and COVID-19.",
        styleDescription: TextStyle(
          fontFamily: 'Lato',
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),
        pathImage: "images/covered.svg",
        backgroundColor: Color(0xFF161625),
        heightImage: 250,
        widthImage: 250,
      ),
    );
    slides.add(
      new Slide(
        title: "Stay Home",
        styleTitle: TextStyle(
          fontFamily: 'Lato',
          fontSize: 30,
          fontWeight: FontWeight.bold
        ),
        description: "Stay home and self-isolate even with minor symptoms such as cough, headache, mild fever, until you recover. Have someone bring you supplies. If you need to leave your house, wear a mask to avoid infecting others. Why? Avoiding contact with others will protect them from possible COVID-19 and other viruses.",
        styleDescription: TextStyle(
          fontFamily: 'Lato',
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),
        pathImage: "images/stayhome.svg",
        backgroundColor: Color(0xFF161625),
        heightImage: 250,
        widthImage: 250,
      ),
    );
    slides.add(
      new Slide(
        title: "Social Distancing",
        styleTitle: TextStyle(
          fontFamily: 'Lato',
          fontSize: 30,
          fontWeight: FontWeight.bold
        ),
        description: "Avoid going to crowded places. Why? Where people come together in crowds, you are more likely to come into close contact with someone that has COVID-19 and it is more difficult to maintain physical distance of 1 metre.",
        styleDescription: TextStyle(
          fontFamily: 'Lato',
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),
        pathImage: "images/socialdistancing.png",
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