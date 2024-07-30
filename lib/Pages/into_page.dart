import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 138, 60, 55),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: 25),

            //shop name

            Text(
              "SUSHI MAN",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 28,
                color: Colors.white,
              ),
            ),

            SizedBox(height: 25),

            //icon

            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset('lib/images/sushi_eggs.png'),
            ),

            // title

            Text(
              "THE TASTE OF JAPANESE FOOD",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 44,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),

            //subtitle

            Text(
              "Feel the taste of the most popular Japanese food from anywhere and anytime",
              style: GoogleFonts.dmSerifDisplay(
                color: Colors.grey[200],
                height: 2,
              ),
            ),

            SizedBox(height: 25),

            //get started button
            MyButton(
                text: "Get Started",
                onTap: () {
                  // go to
                  Navigator.pushNamed(context, '/menupage');
                }),
          ],
        ),
      ),
    );
  }
}
