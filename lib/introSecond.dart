import 'package:flutter/material.dart';

class IntroSecond extends StatefulWidget {
  const IntroSecond({Key? key}) : super(key: key);

  @override
  _IntroSecondState createState() => _IntroSecondState();
}

class _IntroSecondState extends State<IntroSecond> {
  double _progressValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Center(
        child: Column(
          children: [
            const Column(
              children: [
                SizedBox(height: 90.0),
                Align(
                  child: FractionalTranslation(
                    translation: Offset(-0.12, 0.0),
                    child: Text(
                      'Showcase Your Talent',
                      style: TextStyle(
                        fontSize: 23.0,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: FractionalTranslation(
                    translation: Offset(0.09, 0.0),
                    child: Text(
                      'Inspire Others,',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: FractionalTranslation(
                    translation: Offset(0.15, 0.0),
                    child: Text(
                      'Earn Big',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: FractionalTranslation(
                translation: const Offset(0.0, -0.09),
                child: Image.asset(
                  'assets/images/Novelist writing-bro 1.png',
                  height: 400,
                  width: 300,
                ),
              ),
            ),
            const SizedBox(height: 1.0),
            const Padding(
              padding: EdgeInsets.all(2),
              child: Align(
                alignment: Alignment.center,
                child: FractionalTranslation(
                  translation: Offset(0.045, -0.8),
                  child: Text(
                    'Freelancers, monetize your expertise by uploading courses. Share your portfolio and set your rates. Join a community that values your skills',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: FractionalTranslation(
                translation: const Offset(0.1, -11),
                child: Container(
                  height: 6.0,
                  width: MediaQuery.of(context).size.width *
                      0.45, // 2/3rd of the screen width
                  color: Colors.amber,
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomRight,
                child: FractionalTranslation(
                  translation: const Offset(-0.1, -0.9),
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: ElevatedButton(
                      onPressed: () {
                        // Add your button click logic here
                        setState(() {
                          // Simulate progress increase
                          if (_progressValue < 1.0) {
                            _progressValue += 0.1;
                          } else {
                            _progressValue = 0.0;
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.amber,
                        shape: const CircleBorder(side: BorderSide.none),
                        padding: const EdgeInsets.all(2.0),
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Icon(Icons.arrow_forward, color: Colors.white),
                          SizedBox(
                            width: 24,
                            height: 24,
                            child: CircularProgressIndicator(
                              value: _progressValue,
                              backgroundColor: Colors.white,
                              valueColor:
                              AlwaysStoppedAnimation<Color>(Colors.black),
                              strokeWidth: 2,
                            ),
                          ),
                        ],
                      ),
                    ),
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
