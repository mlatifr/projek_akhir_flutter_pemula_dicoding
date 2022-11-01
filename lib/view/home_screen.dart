import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _screenWidth = MediaQuery.of(context).size.width;
    double _screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: SafeArea(
            child: Stack(
          children: [
            Text(
              'homely',
              style: TextStyle(
                fontSize: _screenWidth * .05,
                fontWeight: FontWeight.bold,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 2
                  ..color = Colors.black,
              ),
            ),
            Text(
              'homely',
              style: TextStyle(
                fontSize: _screenWidth * .05,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        )),
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: _screenWidth * .15,
            child: Container(
              width: _screenWidth * .7,
              height: _screenHeight / 2 + (_screenHeight * 0.2),
              // color: Colors.green,
              child: Container(
                // color: Colors.amber,
                margin: EdgeInsets.only(top: _screenHeight * .1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Your adventure\nstarts here",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: _screenWidth * .05,
                        foreground: Paint()
                          ..style = PaintingStyle.fill
                          ..strokeWidth = 20
                          ..color = Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: _screenHeight * .08,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) {
                        //   return DetailPage();
                        // }));
                      },
                      child: const Text("CLICK HERE"),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                          textStyle: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            child: ClipPath(
              clipper: WaveClipperOne(),
              child: Container(
                width: _screenWidth,
                height: _screenHeight / 3 + (_screenHeight * 0.2),
                decoration: const BoxDecoration(
                    // color: Colors.blue,
                    ),
                child: Image.asset("assets/images/house_home_screen.jpg",
                    fit: BoxFit.fill),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
