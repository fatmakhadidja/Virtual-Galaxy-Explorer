import 'package:flutter/material.dart';
import 'package:virtual_galaxy_explorer/overview.dart';
import 'galaxiesStarting.dart';

class LoginOption extends StatefulWidget {
  const LoginOption({super.key});

  @override
  State<LoginOption> createState() => _LoginOptionState();
}

class _LoginOptionState extends State<LoginOption> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/loginoptionImage.png'), // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 90,
              left: 40,
              child: Text(
                'Let\'s float in',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'poppins',
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              top: 135,
              left: 40,
              child: const Text(
                'Galaxies',
                style: TextStyle(
                  fontSize: 63,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              bottom: 340,
              left: 40,
              child: Text(
                'Welcome',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'poppins',
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              bottom: 225,
              left: 40,
              child: const Text(
                'Unlock a universe of\n'
                    'knowledge and adventure\n'
                    'with your pass.\n',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              bottom: 120,
              right: 42,
              left: 42,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 60,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Color(0xFFBD6230),
                        borderRadius: BorderRadius.circular(20),
                      ),
                        child:
                          Center(
                            child: Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'poppins',
                                color: Colors.white,
                              ),
                            ),
                          ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      height: 60,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                        child:
                          Center(
                            child: Text(
                              'Sign up',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'poppins',
                                color: Colors.black,
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
    );;
  }
}
