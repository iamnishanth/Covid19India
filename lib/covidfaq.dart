import 'package:flutter/material.dart';
import 'reusable_card.dart';

class CovidFAQPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF161625),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top:25,bottom: 15),
              child: Text(
                "Covid19 FAQ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.white70
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:25,bottom: 25),
              child: Text(
                "(Source: World Health Organization)",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 15,
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
                  "What is Coronavirus ?",
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
                      "Coronaviruses are a large family of viruses which may cause illness in animals or humans.  In humans, several coronaviruses are known to cause respiratory infections ranging from the common cold to more severe diseases such as Middle East Respiratory Syndrome (MERS) and Severe Acute Respiratory Syndrome (SARS). The most recently discovered coronavirus causes coronavirus disease COVID-19.",
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
                  "What is Covid19 ?",
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
                      "COVID-19 is the infectious disease caused by the most recently discovered coronavirus. This new virus and disease were unknown before the outbreak began in Wuhan, China, in December 2019. COVID-19 is now a pandemic affecting many countries globally.",
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
                  "What are the Symptoms of Covid19 ?",
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
                      """The most common symptoms of COVID-19 are fever, dry cough, and tiredness. Other symptoms that are less common and may affect some patients include aches and pains, nasal congestion, headache, conjunctivitis, sore throat, diarrhea, loss of taste or smell or a rash on skin or discoloration of fingers or toes. These symptoms are usually mild and begin gradually. Some people become infected but only have very mild symptoms.

Most people (about 80%) recover from the disease without needing hospital treatment. Around 1 out of every 5 people who gets COVID-19 becomes seriously ill and develops difficulty breathing. Older people, and those with underlying medical problems like high blood pressure, heart and lung problems, diabetes, or cancer, are at higher risk of developing serious illness.  However, anyone can catch COVID-19 and become seriously ill.  People of all ages who experience fever and/or  cough associated withdifficulty breathing/shortness of breath, chest pain/pressure, or loss of speech or movement should seek medical attention immediately. If possible, it is recommended to call the health care provider or facility first, so the patient can be directed to the right clinic.""",
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
                  "How does Covid19 Spread ?",
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
                      "People can catch COVID-19 from others who have the virus. The disease spreads primarily from person to person through small droplets from the nose or mouth, which are expelled when a person with COVID-19 coughs, sneezes, or speaks. These droplets are relatively heavy, do not travel far and quickly sink to the ground. People can catch COVID-19 if they breathe in these droplets from a person infected with the virus.  This is why it is important to stay at least 1 meter) away from others. These droplets can land on objects and surfaces around the person such as tables, doorknobs and handrails.  People can become infected by touching these objects or surfaces, then touching their eyes, nose or mouth.  This is why it is important to wash your hands regularly with soap and water or clean with alcohol-based hand rub.",
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
                  "Can COVID-19 be caught from a person who has no symptoms ?",
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
                      "COVID-19 is mainly spread through respiratory droplets expelled by someone who is coughing or has other symptoms such as fever or tiredness. Many people with COVID-19 experience only mild symptoms. This is particularly true in the early stages of the disease. It is possible to catch COVID-19 from someone who has just a mild cough and does not feel ill. Some reports have indicated that people with no symptoms can transmit the virus. It is not yet known how often it happens. WHO is assessing ongoing research on the topic and will continue to share updated findings.",
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
                  "How can we protect others and ourselves if we don't know who is infected ?",
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
                      """Practicing hand and respiratory hygiene is important at ALL times and is the best way to protect others and yourself.

When possible maintain at least a 1 meter distance between yourself and others. This is especially important if you are standing by someone who is coughing or sneezing.  Since some infected persons may not yet be exhibiting symptoms or their symptoms may be mild, maintaining a physical distance with everyone is a good idea if you are in an area where COVID-19 is circulating. """,
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
                  "What should I do if I have come in close contact with someone who has COVID-19?",
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
                      """If you have been in close contact with someone with COVID-19, you may be infected.

Close contact means that you live with or have been in settings of less than 1 metre from those who have the disease. In these cases, it is best to stay at home.

If you have definitely had COVID-19 (confirmed by a test) self-isolate for 14 days even after symptoms have disappeared as a precautionary measure – it is not yet known exactly how long people remain infectious after they have recovered. Follow national advice on self-isolation.""",
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
                  "What does it mean to self-isolate?",
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
                      """Self-isolation is an important measure taken by those who have COVID-19 symptoms to avoid infecting others in the community, including family members.

Self-isolation is when a person who is experiencing fever, cough or other COVID-19 symptoms stays at home and does not go to work, school or public places. This can be voluntarily or based on his/her health care provider’s recommendation.

If a person is in self-isolation, it is because he/she is ill but not severely ill (requiring medical attention)

have a large, well-ventilated with hand-hygiene and toilet facilities

If this is not possible, place beds at least 1 metre apart

Keep at least 1 metre from others, even from your family members

Monitor your symptoms daily

Isolate for 14 days, even if you feel healthy

If you develop difficulty breathing, contact your healthcare provider immediately – call them first if possible

Stay positive and energized by keeping in touch with loved ones by phone or online, and by exercising yourself at home.""",
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
                  "Is there a vaccine, drug or treatment for COVID-19?",
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
                      """While some western, traditional or home remedies may provide comfort and alleviate symptoms of mild COVID-19, there are no medicines that have been shown to prevent or cure the disease. WHO does not recommend self-medication with any medicines, including antibiotics, as a prevention or cure for COVID-19. However, there are several ongoing clinical trials of both western and traditional medicines. WHO is coordinating efforts to develop vaccines and medicines to prevent and treat COVID-19 and will continue to provide updated information as soon research results become available.

                      The most effective ways to protect yourself and others against COVID-19 are to:

                      Clean your hands frequently and thoroughly
                      
                      Avoid touching your eyes, mouth and nose
                      
                      Cover your cough with the bend of elbow or tissue. If a tissue is used, discard it immediately and wash your hands.
                      
                      Maintain a distance of at least 1 metre from others. """,
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
                  "How to properly wear a medical mask?",
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
                      """If you choose to wear a mask:

Before touching the mask, clean hands with an alcohol-based hand rub or soap and water

Take the mask and inspect it for tears or holes.

Orient which side is the top side (where the metal strip is).

Ensure the proper side of the mask faces outwards (the coloured side).

Place the mask to your face. Pinch the metal strip or stiff edge of the mask so it moulds to the shape of your nose.

Pull down the mask’s bottom so it covers your mouth and your chin.

Do not touch the mask while you are wearing it for protection.

After use, take off the mask with clean hands; remove the elastic loops from behind the ears while keeping the mask away from your face and clothes, to avoid touching potentially contaminated surfaces of the mask.

Discard the mask in a closed bin immediately after use. Do not reuse the mask.

Perform hand hygiene after touching or discarding the mask – Use alcohol-based hand rub or, if visibly soiled, wash your hands with soap and water. """,
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
                  "How long does it take after exposure to COVID-19 to develop symptoms?",
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
                      """The time between exposure to COVID-19 and the moment when symptoms start is commonly around five to six days but can range from 1 – 14 days.""",
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
                  "How to grocery shop safely?",
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
                      """When grocery shopping, keep at least 1-metre distance from others and avoid touching your eyes, mouth and nose. If possible, sanitize the handles of shopping trolleys or baskets before shopping. Once home, wash your hands thoroughly and also after handling and storing your purchased products.

There is currently no confirmed case of COVID-19 transmitted through food or food packaging.""",
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
          ],
        )
      ),
    );
  }
}