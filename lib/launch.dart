import 'package:flutter/material.dart';

class launch extends StatefulWidget {
  const launch({super.key});

  @override
  State<launch> createState() => _launchState();
}

class _launchState extends State<launch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/launchImage.png'), // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 90,
              left: 40,
              child : Container(
                child: Text(
                  'Virtual',
                  style : TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'poppins',
                      color: Colors.white
                  ),
                ),
              ),
            ),
            Positioned(
              top: 130,
              left: 40,
              child : Container(
                child: Text(
                  'Galaxy',
                  style : TextStyle(
                      fontSize: 77,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'poppins',
                      color: Colors.white
                  ),
                ),
              ),
            ),
            Positioned(
              top: 200,
              left: 40,
              child : Container(
                child: Text(
                  'Explorer',
                  style : TextStyle(
                      fontSize: 77,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'poppins',
                      color: Colors.white
                  ),
                ),
              ),
            ),
            Positioned(
              top: 310,
              left: 40,
              child : Container(
                child: Text(
                  'We will learn all of the scientific \ndisciplines that involve.',
                  style : TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'poppins',
                      color: Colors.white
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 90,
             right: 42,
              left: 42,
              child: Container(
                height: 75,
                width: 329,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Start learning',
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
            )
          ],
        ),
      ),
    );
  }
}
