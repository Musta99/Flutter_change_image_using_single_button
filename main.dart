import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: myPhoto(),
        backgroundColor: Colors.indigoAccent,
        appBar: AppBar(
          title: Text(
            "My Biz Card",
          ),
        ),
      ),
    ),
  );
}

class myPhoto extends StatefulWidget {
  const myPhoto({Key? key}) : super(key: key);

  @override
  State<myPhoto> createState() => _myPhotoState();
}

class _myPhotoState extends State<myPhoto> {
  var imageIndex = 0;
  List<String> listImage = [
    "images/messi.jpg",
    "images/haaland.jpg",
    "images/reus.jpg",
    "images/uclfinal.jpg"
  ];
  void messiImage() {
    setState(() {
      imageIndex = (imageIndex + 1) % listImage.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Image.asset(listImage[imageIndex]),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: EdgeInsets.all(30),
                ),
                onPressed: messiImage,
                child: Text(
                  "Click Here",
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
