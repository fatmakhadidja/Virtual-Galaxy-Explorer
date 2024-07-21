import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

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
                  SizedBox(height: 60), // Provide space at the top
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
                  SizedBox(height: 30),
                  Divider(
                    color: Colors.white,
                    thickness: 3,
                    indent: 80,
                    endIndent: 80, // Added endIndent for better visibility
                  ),
                  SizedBox(height: 40),
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
        ],
      ),
    );
  }
}
