import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final anchored = Anchored(targetAnchor: null);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Anchored Example'),
        ),
        body: Stack(
          children: const [
            Positioned(
              left: 0,
              top: 0,
              child: AnchoredWidget(),
            ),
            Positioned(
              left: 60,
              top: 300,
              child: TargetWidget(),
            ),
          ],
        ),
      ),
    );
  }
}

class TargetWidget extends StatelessWidget {
  const TargetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      color: Colors.blue,
      alignment: Alignment.center,
      child: const Text(
        'Target',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}

class AnchoredWidget extends StatelessWidget {
  const AnchoredWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      color: Colors.red,
      alignment: Alignment.center,
      child: const Text(
        'Anchored',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
