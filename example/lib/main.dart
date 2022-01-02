import 'package:anchored/anchored.dart';
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
          children: [
            Positioned(
              left: TargetWidget.rect.left,
              top: TargetWidget.rect.top,
              child: const TargetWidget(),
            ),
            const Anchored(
              targetRect: TargetWidget.rect,
              targetAnchor: Alignment.bottomCenter,
              childAnchor: Alignment.topCenter,
              childSize: AnchoredWidget.size,
              child: AnchoredWidget(),
            ),
          ],
        ),
      ),
    );
  }
}

class TargetWidget extends StatelessWidget {
  const TargetWidget({Key? key}) : super(key: key);

  static const rect = Rect.fromLTWH(60, 300, 80, 80);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: rect.height,
      width: rect.width,
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

  static const size = Size(80, 80);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height,
      width: size.width,
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
