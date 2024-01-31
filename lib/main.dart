import 'package:flutter/material.dart';

void main(){
  runApp(const PageDartTraining());
}

class PageDartTraining extends StatelessWidget {
  const PageDartTraining({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: const Text("DarTraining"),
            backgroundColor: Colors.blueAccent,
          ),
        body: Container(
          color: Colors.red,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                // DART
                color: Colors.yellow,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    textBlock('d', Colors.teal.shade600),
                    textBlock('a', Colors.teal.shade700),
                    textBlock('r', Colors.teal.shade800),
                    textBlock('t', Colors.teal.shade900),
                  ]),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.topRight,
                  color: Colors.purple,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      textBlock('r', Colors.teal.shade800),
                      textBlock('a', Colors.teal.shade700),
                      textBlock('i', Colors.teal.shade600),
                      textBlock('n', Colors.teal.shade500),
                      textBlock('i', Colors.teal.shade400),
                      textBlock('n', Colors.teal.shade300),
                      textBlock('g', Colors.teal.shade200),
                    ],
                  ),
                ),
              )
            ]
            ),
        ),
      ),
    );
  }
  Container textBlock(String letter, Color clr){
    return Container(
      width: 75,
      height: 75,
      decoration: BoxDecoration(shape: BoxShape.circle, color: clr),
      alignment: Alignment.center,
      child: Text(
        letter.toUpperCase(),
        style: const TextStyle(color: Colors.black, fontSize: 24),
        ),
    );
  }
}