import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:virtual_galaxy_explorer/satelitesstarting.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/Homescreen.png'), // Replace with your image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation, secondaryAnimation) => Satelitesstarting(),
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
                      height: 40,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          SizedBox(width: 6),
                          Icon(
                            Icons.arrow_back_rounded,
                            color: Colors.white,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Welcome aboard',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8), // Add space between texts
                  Row(
                    children: [
                        Text(
                          'Space voyager!',
                          style: TextStyle(
                            fontSize: 33,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            color: Colors.white,
                          ),
                        ),
                      SizedBox(width: 20), // Add spacing between Lottie animation and text
                      Flexible(
                        child: Lottie.asset(
                          'assets/earth.json',
                          height: 50, // Adjust the height as needed
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Divider(
                    color: Colors.white,
                    thickness: 3,
                    indent: 80,
                    endIndent: 80, // Added endIndent for better visibility
                  ),
                  SizedBox(height: 30),
                  Container(
                    height: 196,
                    width: double.infinity, // Adjust width to fit available space
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/vrShowsRectangle.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 15,
                          right: 20,
                          child: Container(
                            height: 60,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
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
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 196,
                    width: double.infinity, // Adjust width to fit available space
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/q&aRectangle.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 15,
                          right: 20,
                          child: Container(
                            height: 60,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
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
                      ],
                    ),
                  ),
                  SizedBox(height: 1000), // Ensure content is enough for scrolling
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
                width: 430,
                height: 100,
                decoration : BoxDecoration(
                  color : Color(0xFF141414),
                ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height :58,
                      width: 58,
                     decoration: BoxDecoration(
                       color : Color(0xFFFFFFFF).withOpacity(0.2),
                       borderRadius: BorderRadius.circular(13),
                     ),
                      child : Icon(
                        Icons.home_outlined,
                        color : Colors.white,
                        size : 35
                      ),
                    ),
                    SizedBox(width : 60),
                    Container(
                      height :58,
                      width: 58,
                      decoration: BoxDecoration(
                        color : Color(0xFF141414).withOpacity(0.2),
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child : Icon(
                           Icons.tv_rounded,
                          color : Colors.white,
                          size : 35
                      ),
                    ),
                    SizedBox(width : 60),
                    Container(
                      height :58,
                      width: 58,
                      decoration: BoxDecoration(
                        color : Color(0xFF141414).withOpacity(0.2),
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child : Icon(
                          Icons.featured_play_list_outlined,
                          color : Colors.white,
                          size : 35
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ),
        ],
      ),
    );
  }
}
