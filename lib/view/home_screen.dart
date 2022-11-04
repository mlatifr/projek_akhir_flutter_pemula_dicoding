import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

import 'catalog_homes_for_sale.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color _backgroundColor = Colors.white;

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
        title: TIttleText(screenWidth: _screenWidth, tittle: 'homely'),
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
                color: _backgroundColor,
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
                      height: _screenHeight * .04,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const CatalogHomesForSale();
                          }));
                        });
                      },
                      child: const Text("Navigate to list home"),
                      // style: ElevatedButton.styleFrom(
                      //     primary: Colors.black,
                      //     textStyle: const TextStyle(
                      //         fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: _screenHeight * .04,
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 10),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (_backgroundColor == Colors.lightGreenAccent) {
                              _backgroundColor = Colors.white;
                            } else {
                              _backgroundColor = Colors.lightGreenAccent;
                            }
                          });
                        },
                        child: const Text("Change Background Color"),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            textStyle: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                      ),
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

class TIttleText extends StatelessWidget {
  const TIttleText(
      {Key? key, required double screenWidth, required this.tittle})
      : _screenWidth = screenWidth,
        super(key: key);

  final double _screenWidth;
  final String tittle;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Stack(
      children: [
        Text(
          tittle,
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
          tittle,
          style: TextStyle(
            fontSize: _screenWidth * .05,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ],
    ));
  }
}
