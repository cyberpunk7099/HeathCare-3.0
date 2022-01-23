







import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

class Screen22 extends StatefulWidget {
  @override
  State<Screen22> createState() => _Screen22State();
}

class _Screen22State extends State<Screen22> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('News Feed'),
        backgroundColor: kPrimaryColor,


      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [

               Text(" End of Covid-19 pandemic in Europe ‘plausible’ after Omicron: WHO",
               style: GoogleFonts.poppins(textStyle:TextStyle(fontSize: 25,fontWeight: FontWeight.w600,color: Colors.black)),),

                Divider(thickness: 5,),

                Text(" Hans Kluge, the WHO Europe director, told the AFP news agency that the Covid-19 pandemic has entered a new phase with the Omicron variant, which could infect 60 percent of people in Europe by March, and that could eventually bring the pandemic to an end.",
                  style: GoogleFonts.poppins(textStyle:TextStyle(fontSize: 16,fontWeight: FontWeight.normal,color: Colors.black)),),

                Container(
                  height: 200,
                  width: width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: kPrimaryColor, width: 5),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 6.0,
                      ),
                    ],
                    image: DecorationImage(
                      alignment: Alignment.topCenter,
                      image: AssetImage('assets/icons/news.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Align( alignment: Alignment.bottomCenter,
                       // child: Text(" End of Covid-19 pandemic in Europe ‘plausible’ after Omicron: WHO",
                         // style: GoogleFonts.poppins(textStyle:TextStyle(fontSize: 17,fontWeight: FontWeight.w600,color: Colors.black)),)

                    ),
                  ),
                ),

                Text("In what appears as a silver lining in these days of the coronavirus disease (Covid-19), the World Health Organisation (WHO) has for the first time in a while indicated that the pandemic could come to an ‘end’ in Europe after the current Omicron-driven wave passes over after infecting around 60 per cent of the population of the continent."
                    " Hans Kluge, the WHO Europe director, told the AFP news agency that the Covid-19 pandemic has entered a new phase with the Omicron variant, which could infect 60 percent of people in Europe by March, and that could eventually bring the pandemic to an end."
                    "It is plausible that the region is moving towards a kind of pandemic endgame,” Hans Kluge told AFP, although urging necessary caution due to the virus's ability to mutate."
                    "The Omicron variant, which studies have shown generally leads to less severe infection among vaccinated people than Delta, has raised long-awaited hopes that Covid-19 is starting to shift from a pandemic to a more manageable endemic illness like seasonal flu."
                    "The WHO official's comments instill some hope for Europe, currently reeling under the highly transmissible Omicron-led wave, but also has a message for the rest of the world."
                    "Kluge said that once the current surge of cases in Europe subsides, “there will be for quite some weeks and months a global immunity, either thanks to the vaccine or because people have immunity due to the infection, and also lowering seasonality."
                    'Covid-19 may still make a return near the end of the year; however, that does not necessarily equate to the “pandemic” returning, he said'

                "So we anticipate that there will be a period of quiet before Covid-19 may come back towards the end of the year, but not necessarily the pandemic coming back, Kluge was quoted as saying"

                "It is likely that the coronavirus disease will be returning as an endemic, but that is a more favourable situation compared to the current scenario, said the WHO Europe director."
                    'There is a lot of talk about endemic but endemic means ... that it is possible to predict whats going to happen, Kluge said.This virus has surprised (us) more than once so we have to be very careful'
                    'In the WHO Europe region, which comprises 53 countries including several in Central Asia, Omicron represented 15 per cent of new cases as of January 18, compared to 6.3 percent a week earlier, the global health body said.',
                  style: GoogleFonts.poppins(textStyle:TextStyle(fontSize: 16,fontWeight: FontWeight.normal,color: Colors.black)),),




              ],
            ),
          ),
        ),
      ),

    );
  }
}