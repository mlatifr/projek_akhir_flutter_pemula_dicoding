// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

var _screenWidth, _screenHeight;

class CatalogHomesForSale extends StatefulWidget {
  final Color changeColor;
  const CatalogHomesForSale({Key? key, required this.changeColor})
      : super(key: key);

  @override
  State<CatalogHomesForSale> createState() => _CatalogHomesForSaleState();
}

class _CatalogHomesForSaleState extends State<CatalogHomesForSale> {
  @override
  Widget build(BuildContext context) {
    _screenWidth = MediaQuery.of(context).size.width;
    _screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.changeColor,
      ),
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < 600) {
          return ListView(
            children: _generateListCaption(),
          );
        } else if (constraints.maxWidth < 900) {
          return GridView.count(
            crossAxisCount: 2,
            children: _generateContainers600px(),
          );
        } else {
          return GridView.count(
            crossAxisCount: 4,
            children: _generateContainers(),
          );
        }
      }),
    );
  }
}

List<Widget> _generateContainers() {
  return List<Widget>.generate(20, (index) {
    return Container(
      margin: const EdgeInsets.all(8),
      //color: //colors.amber,
      child: Column(
        children: [
          Container(
            //color: //colors.green,
            width: _screenWidth * .15,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40.0),
              child: Container(
                  margin: const EdgeInsets.all(8),
                  //color: //colors.blueGrey,
                  child: Image.network(
                    "https://media-cdn.tripadvisor.com/media/photo-o/15/01/d7/4b/p-20180510-153310-01.jpg",
                    fit: BoxFit.fill,
                  )),
            ),
          ),
          Container(
            width: _screenWidth * .22,
            //color: //colors.greenAccent,
            margin: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Lembah Dieng",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                ),
                SizedBox(height: _screenHeight * .005),
                Text(
                  _loremIpsum,
                  // overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(fontSize: 10),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  });
}

List<Widget> _generateContainers600px() {
  return List<Widget>.generate(20, (index) {
    return Container(
      margin: const EdgeInsets.all(8),
      //color: //colors.amber,
      child: Column(
        children: [
          Container(
            //color: //colors.green,
            width: _screenWidth * .35,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40.0),
              child: Container(
                  margin: const EdgeInsets.all(8),
                  //color: //colors.blueGrey,
                  child: Image.network(
                    "https://media-cdn.tripadvisor.com/media/photo-o/15/01/d7/4b/p-20180510-153310-01.jpg",
                    fit: BoxFit.fill,
                  )),
            ),
          ),
          Container(
            width: _screenWidth * .35,
            //color: //colors.greenAccent,
            margin: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Lembah Dieng",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                ),
                SizedBox(height: _screenHeight * .005),
                Text(
                  _loremIpsum,
                  // overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  });
}

List<Widget> _generateListCaption() {
  return List<Widget>.generate(20, (index) {
    return Row(
      children: [
        Container(
          width: _screenWidth * .5,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40.0),
            child: Container(
                margin: const EdgeInsets.all(8),
                //color: //colors.blueGrey,
                height: 200,
                child: Image.network(
                  "https://media-cdn.tripadvisor.com/media/photo-o/15/01/d7/4b/p-20180510-153310-01.jpg",
                  fit: BoxFit.fill,
                )),
          ),
        ),
        Container(
          height: 200,
          width: _screenWidth * .4,
          margin: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Lembah Dieng",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
              SizedBox(height: _screenHeight * .03),
              Text(
                _loremIpsum,
                // overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ],
    );
  });
}

String _loremIpsum = "Lorem Ipsum is simply dummy text of the "
    "printing and typesetting industry. Lorem Ipsum has  "
    "been the industry's standard dummy text ever since  ";
