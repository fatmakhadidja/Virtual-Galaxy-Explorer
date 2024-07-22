import 'package:flutter/material.dart';
import 'package:virtual_galaxy_explorer/home.dart';
import 'package:virtual_galaxy_explorer/Q&A/q&aGalaxies.dart';
import 'package:virtual_galaxy_explorer/Q&A/q&aPlanets.dart';
import 'package:virtual_galaxy_explorer/Q&A/q&aSatellites.dart';
import 'package:virtual_galaxy_explorer/Q&A/q&aStars.dart';
import 'package:virtual_galaxy_explorer/VR/vrshows.dart';

class QandA extends StatefulWidget {
  const QandA({super.key});

  @override
  State<QandA> createState() => _QandAState();
}

class _QandAState extends State<QandA> {
  void _navigateToHome() {
    Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => const Home(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(-1.0, 0.0);
          const end = Offset.zero;
          const curve = Curves.easeInOut;
          var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          return SlideTransition(position: animation.drive(tween), child: child);
        },
      ),
    );
  }

  void _navigateTo(Widget page) {
    Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => page,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(1.0, 0.0);
          const end = Offset.zero;
          const curve = Curves.easeInOut;
          var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          return SlideTransition(position: animation.drive(tween), child: child);
        },
      ),
    );
  }

  void _navigateToVrshows() {
    Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => const Vrshows(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(-1.0, 0.0);
          const end = Offset.zero;
          const curve = Curves.easeInOut;
          var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          return SlideTransition(position: animation.drive(tween), child: child);
        },
      ),
    );
  }

  Widget _buildBottomNavigationIcon(IconData icon, Color color) {
    return Container(
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
    );
  }

  Widget _buildNavigationContainer(String imagePath) {

      return  Container(
        height: 150,
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
                image: AssetImage('assets/Homescreen.png'),
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
                    onTap: _navigateToHome,
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
                    'Let\'s answer',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    'Q&A polls',
                    style: TextStyle(
                      fontSize: 33,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Image(
                    image: AssetImage('assets/q&aContainer.png'),
                  ),
                  const SizedBox(height: 30),
                  GestureDetector(
                    onTap: () => _navigateTo(QandAPlanets()),
                   child : _buildNavigationContainer('assets/planetsRectangle.png'),
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap : () => _navigateTo(QandAGalaxies()),
                  child: _buildNavigationContainer('assets/galaxiesRectangle.png'),
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                  onTap : () => _navigateTo(QandAStars()),
                    child :_buildNavigationContainer('assets/starsRectangle.png'),
                  ),

                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap : () => _navigateTo(QandASatellites()),
                    child :_buildNavigationContainer('assets/satellitesRectangle.png'),
                  ),

                  const SizedBox(height: 80),
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
                    GestureDetector(
                      onTap: _navigateToHome,
                      child: _buildBottomNavigationIcon(Icons.home_outlined, Color(0xFF141414).withOpacity(0.2)),
                    ),
                    const SizedBox(width: 60),
                    GestureDetector(
                      onTap: _navigateToVrshows,
                      child: _buildBottomNavigationIcon(Icons.tv_rounded, Color(0xFF141414).withOpacity(0.2)),
                    ),
                    const SizedBox(width: 60),
                    _buildBottomNavigationIcon(Icons.featured_play_list_outlined, Colors.white.withOpacity(0.2)),
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
