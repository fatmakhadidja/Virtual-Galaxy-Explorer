import 'package:flutter/material.dart';
import 'package:virtual_galaxy_explorer/loginOption.dart';
import 'package:virtual_galaxy_explorer/planetsstarting.dart';
import 'package:virtual_galaxy_explorer/starsstarting.dart';

class Satelitesstarting extends StatefulWidget {
  const Satelitesstarting({super.key});

  @override
  State<Satelitesstarting> createState() => _SatelitesstartingState();
}

class _SatelitesstartingState extends State<Satelitesstarting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/satelitesstartingImage.png'), // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 90,
              left: 40,
              child: Text(
                'Learn about',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'poppins',
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              top: 140,
              left: 40,
              child: const Text(
                'Satellites',
                style: TextStyle(
                  fontSize: 63,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              bottom: 190,
              left: 40,
              child: const Text(
                'Venture into the realm of\n'
                    'man-made wonders that orbit\n'
                    'our planet. In this section,\n'
                    'you\'ll uncover the ingenuity\n'
                    'behind satellites, from \n'
                    'communication satellites \n'
                    'linking the world to Earth',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              bottom: 40,
              right: 42,
              left: 42,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) => LoginOption(),
                      transitionsBuilder: (context, animation, secondaryAnimation, child) {
                        const begin = Offset(1.0, 0.0); // Start from the right side
                        const end = Offset.zero; // End at the left side
                        const curve = Curves.easeInOut;
                        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                        return SlideTransition(
                          position: animation.drive(tween),
                          child: child,
                        );
                      },
                    ),
                  );
                },
                child: Container(
                  height: 75,
                  width: 329,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Get started',
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'poppins',
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 10),
                      Icon(
                        Icons.arrow_right_alt,
                        color: Colors.black,
                        size: 30,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
