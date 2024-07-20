import 'package:flutter/material.dart';

class Overview extends StatefulWidget {
  const Overview({super.key});

  @override
  State<Overview> createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/overviewImage.png'), // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 50,
              right: 35,
              child: Container(
                height: 40,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Skip',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'poppins',
                        color: Colors.white,
                        letterSpacing: 1
                      ),
                    ),
                    SizedBox(width: 6),
                    Icon(
                      Icons.arrow_right_alt,
                      color: Colors.white,
                      size: 30,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 90,
              left: 40,
              child: Text(
                'Insights',
                style: TextStyle(
                  fontSize: 63,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'poppins',
                  color: Colors.white,
                ),
              ),
            ),

            Positioned(
              bottom: 180,
              left: 40,
              child: Text(
                '"Embark on an interstellar\n voyage like  never before. Explore\n distant galaxies,  uncover cosmic\n secrets, and witness the majesty\n of the universe. Your cosmic\n  adventure begins here." ',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'poppins',
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              bottom: 40,
              child: Image.asset('assets/Carousalbutton.png'),
            ),
          ],
        ),
      ),
    );
  }
}
