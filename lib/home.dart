import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:virtual_galaxy_explorer/Starting pages/satelitesstarting.dart';
import 'package:virtual_galaxy_explorer/VR/vrshows.dart';
import 'package:virtual_galaxy_explorer/Q&A/q&a.dart'; // Import the QandA page

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _navigateToPage(Widget page, Offset startOffset) {
    Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => page,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          var tween = Tween(begin: startOffset, end: Offset.zero)
              .chain(CurveTween(curve: Curves.easeInOut));
          return SlideTransition(
            position: animation.drive(tween),
            child: child,
          );
        },
      ),
    );
  }

  Widget _buildNavigationContainer(String imagePath, Widget page, Offset startOffset) {
    return GestureDetector(
      onTap: () => _navigateToPage(page, startOffset),
      child: Container(
        height: 196,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imagePath),
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
                child: const Center(
                  child: Icon(
                    Icons.arrow_right_alt,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomNavigationIcon(IconData icon, Color color, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 58,
        width: 58,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(13),
        ),
        child: Center(
          child: Icon(
            icon,
            color: Colors.white,
            size: 35,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
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
                  const SizedBox(height: 15),
                  GestureDetector(
                    onTap: () => _navigateToPage(const Satelitesstarting(), const Offset(-1.0, 0.0)),
                    child: Container(
                      height: 40,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.arrow_back_rounded,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Welcome aboard',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8), // Add space between texts
                  Row(
                    children: [
                      const Text(
                        'Space voyager!',
                        style: TextStyle(
                          fontSize: 33,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 5), // Add spacing between Lottie animation and text
                      Flexible(
                        child: Lottie.asset(
                          'assets/earth.json',
                          height: 50, // Adjust the height as needed
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Divider(
                    color: Colors.white,
                    thickness: 3,
                    indent: 80,
                    endIndent: 80, // Added endIndent for better visibility
                  ),
                  const SizedBox(height: 30),
                  _buildNavigationContainer('assets/vrShowsRectangle.png', const Vrshows(), const Offset(1.0, 0.0)),
                  const SizedBox(height: 20),
                  _buildNavigationContainer('assets/q&aRectangle.png', const QandA(), const Offset(1.0, 0.0)),
                  const SizedBox(height: 1000), // Ensure content is enough for scrolling
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 100,
              decoration: const BoxDecoration(
                color: Color(0xFF141414),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildBottomNavigationIcon(
                      Icons.home_outlined,
                      const Color(0xFFFFFFFF).withOpacity(0.2),
                          () {},
                    ),
                    const SizedBox(width: 60),
                    _buildBottomNavigationIcon(
                      Icons.tv_rounded,
                      const Color(0xFF141414).withOpacity(0.2),
                          () => _navigateToPage(const Vrshows(), const Offset(1.0, 0.0)),
                    ),
                    const SizedBox(width: 60),
                    _buildBottomNavigationIcon(
                      Icons.featured_play_list_outlined,
                      const Color(0xFF141414).withOpacity(0.2),
                          () => _navigateToPage(const QandA(), const Offset(1.0, 0.0)),
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
