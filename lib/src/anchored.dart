import 'package:flutter/material.dart';

class AnchorPositioned {
  AnchorPositioned({
    required this.targetRect,
    required this.targetAnchor,
    required this.childAnchor,
    required this.child,
  });

  final Rect targetRect;
  final Alignment targetAnchor;
  final Alignment childAnchor;
  final Widget child;
}