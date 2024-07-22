import 'package:flutter/material.dart';

class QandASatellites extends StatefulWidget {
  const QandASatellites({super.key});

  @override
  State<QandASatellites> createState() => _QandASatellitesState();
}

class _QandASatellitesState extends State<QandASatellites> {
  List<String> questions = [
    'Which satellite is the first artificial satellite?',
    'What is the name of the satellite system used for GPS?',
    'Which satellite is known for providing global weather data?',
    'What is the name of the telescope satellite launched in 1990?'
  ];

  List<List<String>> answers = [
    ['Hubble Space Telescope', 'Sputnik 1', 'GOES', 'GPS I'],
    ['Galileo', 'GPS', 'Glonass', 'Beidou'],
    ['GOES', 'Hubble Space Telescope', 'Sputnik 1', 'GPS'],
    ['Hubble Space Telescope', 'Chandra', 'James Webb', 'Spitzer'],
  ];

  List<int> correctAnswers = [1, 1, 0, 0]; // Indexes of correct answers
  int selectedContainer = -1;
  int counter = 0;
  String label = 'Next';

  Widget _buildQuestionContainer(Color bgColor, Color textColor, String qstNum, String answer) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            '$qstNum',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              fontFamily: 'Poppins',
              color: textColor,
            ),
          ),
          Text(
            answer,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              fontFamily: 'Poppins',
              color: textColor,
            ),
          ),
          Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(
                color: textColor,
                width: 4,
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
                image: AssetImage('assets/quiz.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Satellites',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacementNamed(context, '/q&a');
                        },
                        child: Image.asset('assets/Close.png'),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Question ${counter + 1}',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    questions[counter],
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedContainer = 0;
                      });
                    },
                    child: _buildQuestionContainer(
                      _getColorForContainer(0),
                      _getTextColorForContainer(0),
                      '1.',
                      answers[counter][0],
                    ),
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedContainer = 1;
                      });
                    },
                    child: _buildQuestionContainer(
                      _getColorForContainer(1),
                      _getTextColorForContainer(1),
                      '2.',
                      answers[counter][1],
                    ),
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedContainer = 2;
                      });
                    },
                    child: _buildQuestionContainer(
                      _getColorForContainer(2),
                      _getTextColorForContainer(2),
                      '3.',
                      answers[counter][2],
                    ),
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedContainer = 3;
                      });
                    },
                    child: _buildQuestionContainer(
                      _getColorForContainer(3),
                      _getTextColorForContainer(3),
                      '4.',
                      answers[counter][3],
                    ),
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                    child: GestureDetector(
                      onTap: () {
                        if (selectedContainer == -1) {
                          // Show a message or prompt if no answer is selected
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Please select an answer')),
                          );
                        } else {
                          if (counter < questions.length - 1) {
                            // Move to the next question
                            setState(() {
                              counter++;
                              selectedContainer = -1; // Reset selection
                              label = 'Next'; // Reset label when moving to the next question
                            });
                          } else if (counter == questions.length - 1) {
                            // Last question, change button to 'Finish'
                            Navigator.pushReplacementNamed(context, '/q&a');
                            // Handle finish action if needed
                          }
                        }
                      },
                      child: _buildNextButton(
                          label == 'Finish' ? Colors.blue : Colors.white,
                          label == 'Finish' ? Colors.white : Colors.black,
                          label
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Color _getColorForContainer(int containerIndex) {
    if (selectedContainer == -1) {
      return Color(0xFF1D1D1D);
    }
    if (containerIndex == selectedContainer) {
      return selectedContainer == correctAnswers[counter] ? Colors.green : Colors.red;
    }
    return containerIndex == correctAnswers[counter] ? Colors.green : Color(0xFF1D1D1D);
  }

  Color _getTextColorForContainer(int containerIndex) {
    if (selectedContainer == -1) {
      return Colors.white;
    }
    return containerIndex == selectedContainer || containerIndex == correctAnswers[counter]
        ? Colors.black
        : Colors.white;
  }
}

Widget _buildNextButton(Color bgColor, Color textColor, String label) {
  return Container(
    height: 80,
    width: double.infinity,
    decoration: BoxDecoration(
      color: bgColor,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Center(
      child: Text(
        label,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          fontFamily: 'Poppins',
          color: textColor,
        ),
      ),
    ),
  );
}
