import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Character Item Widget
Widget charactersItem({
  required String image,
  required String title,
}) {
  return Container(
    height: 250.0,
    width: double.infinity,
    child: Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Image.network(
          image,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Container(
            height: 35.0,
            width: 120.0,
            transform: Matrix4.skewX(-.3),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
              ),
              color: Colors.white,
            ),
            child: MaterialButton(
              onPressed: (){
                print("button pressed");
              },
              child: Center(
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    ),
  );
}