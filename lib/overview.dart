import 'package:flutter/material.dart';
import 'package:virtual_galaxy_explorer/Starting pages/satelitesstarting.dart';
import 'package:virtual_galaxy_explorer/Starting pages/starsstarting.dart';
import 'Starting pages/galaxiesStarting.dart';
import 'package:virtual_galaxy_explorer/launch.dart';

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
              left: 28,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) => Launch(),
                      transitionsBuilder: (context, animation, secondaryAnimation, child) {
                        const begin = Offset(-1.0, 0.0); // Start from the right side
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
                  height: 38,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.arrow_back_rounded,
                        color: Colors.white,
                        size: 30,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 50,
              right: 35,
              child: GestureDetector(
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
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Skip',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          letterSpacing: 1,
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
            ),
            Positioned(
              top: 90,
              left: 40,
              child: const Text(
                'Insights',
                style: TextStyle(
                  fontSize: 63,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              bottom: 180,
              left: 40,
              child: const Text(
                '"Embark on an interstellar\n voyage like  never before. Explore\n distant galaxies,  uncover cosmic\n secrets, and witness the majesty\n of the universe. Your cosmic\n  adventure begins here." ',
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
              left:150,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) => Galaxiesstarting(), // Ensure this page exists
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
                child: Row(
                 children: [
                   GestureDetector(
                     onTap: () {
                       Navigator.pushReplacement(
                         context,
                         PageRouteBuilder(
                           pageBuilder: (context, animation, secondaryAnimation) => Galaxiesstarting(),
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
                   Container(
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
                   SizedBox(width: 30),
                   GestureDetector(
                     onTap: () {
                       Navigator.pushReplacement(
                         context,
                         PageRouteBuilder(
                           pageBuilder: (context, animation, secondaryAnimation) => Starsstarting(),
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
            ),
          ],
        ),
      ),
    );
  }
}
