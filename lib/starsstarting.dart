import 'package:flutter/material.dart';
import 'package:virtual_galaxy_explorer/galaxiesStarting.dart';
import 'package:virtual_galaxy_explorer/satelitesstarting.dart';
import 'planetsstarting.dart';



class Starsstarting extends StatefulWidget {
  const Starsstarting({super.key});

  @override
  State<Starsstarting> createState() => _StarsstartingState();
}

class _StarsstartingState extends State<Starsstarting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/starsstartingImage.png'), // Replace with your image path
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
                'Stars',
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
                'Stellar Discoveries: Embark on\n'
                    'an illuminating voyage to \n'
                    'uncover the secrets of stars. \n'
                    'From the blazing birth of stars\n'
                    'to the enchanting constellations\n'
                    'that adorn our night sky ',
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
              left : 120,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation, secondaryAnimation) => Galaxiesstarting(), // Ensure this page exists
                          transitionsBuilder: (context, animation, secondaryAnimation, child) {
                            const begin = Offset(-1.0, 0.0); // Start from the left side
                            const end = Offset.zero; // End at the current position
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
                      height: 22,
                      width: 22,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white, // Set the stroke color
                          width: 4, // Set the stroke width
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 30),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation, secondaryAnimation) => Planetsstarting(),
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
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle
                      ),
                      child: Icon(
                        Icons.arrow_right_alt,
                        color: Colors.black,
                        size: 40,
                      ),
                    ),
                  ),
                  SizedBox(width: 30),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation, secondaryAnimation) => Planetsstarting(),
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
                      height: 22,
                      width: 22,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white, // Set the stroke color
                          width: 4, // Set the stroke width
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 30),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation, secondaryAnimation) => Satelitesstarting(),
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
                      height: 14,
                      width: 14,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white, // Set the stroke color
                          width: 4, // Set the stroke width
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
