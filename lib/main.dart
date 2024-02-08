import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: IntroductionScreen(),
    );
  }
}

class IntroductionScreen extends StatelessWidget {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          IntroductionPage1(),
          IntroductionPage2(),
          IntroductionPage3(),
        ],
      ),
    );
  }
}

class IntroductionPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            Image.asset('assets/images/Blog post-bro 1.png'),
            SizedBox(height: 30),
            FractionalTranslation(
              translation: Offset(-0.1,-1),
              child: Text(
                  'Empower Your Skills with',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                ),),
            ),
            FractionalTranslation(
              translation: Offset(0,-0.8),
              child: Text(
                'Learning Excellence',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 30,
                  fontWeight: FontWeight.w600
                ),),
            ),
            SizedBox(height: 10),
            FractionalTranslation(
              translation: Offset(0.04,-0.5),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Explore a world of tailored courses by freelancers. From coding to creative arts, find the best path to enhance your skills.',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15,
                    ),),
                ),
              ),
            ),

            FractionalTranslation(
              translation: Offset(-0.45,0),
              child: Container(
                width: 150,
                height: 10,
                color: Colors.amber,
              ),
            ),
            SizedBox(height: 20),
            FractionalTranslation(
              translation: Offset(1.7,-0.4),
              child: CircularButton(
                icon: Icons.arrow_forward,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => IntroductionPage2()));
                },
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}

class IntroductionPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            CustomBackButton(),
            SizedBox(height: 20,),
            FractionalTranslation(
              translation: Offset(-0.15,0),
              child: Text(
                  'Showcase Your Talent, ',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20,
              )),
            ),
            FractionalTranslation(
              translation: Offset(-0.2,-0.1),
              child: Text(
                  'Inspire Others,',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  )),
            ),
            FractionalTranslation(
              translation: Offset(-0.75,-0.2),
              child: Text(
                  'Earn Big',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  )),
            ),

            FractionalTranslation(
              translation: Offset(0.1,-0.2),
              child: Image.asset(
                  'assets/images/Novelist writing-bro 1.png',
              height: 384,
              width: 300,),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: FractionalTranslation(
                translation: Offset(0.03,-1.4),
                child: Text(
                    'Freelancers, monetize your expertise by uploading courses. Share your portfolio and set your rates. Join a community that values your skills',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize:15,
                    )),
              ),
            ),

            FractionalTranslation(
              translation: Offset(-0.52,-10),
              child: Container(
                width: 150,
                height: 10,
                color: Colors.amber,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                SizedBox(width: 20),
                FractionalTranslation(
                  translation: Offset(1.5,-1),
                  child: CircularButton(
                    icon: Icons.arrow_forward,
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => IntroductionPage3()));
                    },
                  ),

                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class IntroductionPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomBackButton(),
            FractionalTranslation(
              translation: Offset(0.2,-0.1),
              child: Image.asset('assets/images/Blogging-bro 1.png',
              height: 420,
              width: 300,),
            ),

            FractionalTranslation(
              translation: Offset(-0.15,-1.5),
              child: Text(
                  'Connect with Top',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  )),
            ),
            FractionalTranslation(
              translation: Offset(-0.48,-1.5),
              child: Text(
                  'Freelancers',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  )),
            ),
            FractionalTranslation(
              translation: Offset(-0.01,-1.5),
              child: Text(
                  'Get Quality Work done',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  )),
            ),


            SizedBox(height: 10),
            FractionalTranslation(
              translation: Offset(-0.45,-1),
              child: Container(
                width: 150,
                height: 10,
                color: Colors.amber,
              ),
            ),
            SizedBox(height: 20),
            FractionalTranslation(
              translation: Offset(1.7,-0.2),
              child: CircularButton(
                icon: Icons.arrow_forward,
                onPressed: () {

                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CircularButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  CircularButton({required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          color: Colors.amber,
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}

class CustomBackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.only(top: 40, left: 20),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Container(
          width: 20,
          height: 20,
          child: Icon(
            Icons.arrow_back,
            size: 25,
          ),
        ),
      ),
    );
  }
}
