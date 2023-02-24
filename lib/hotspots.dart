import 'dart:math';

import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
FloatingActionButton(
child: const Icon(Icons.remove),
backgroundColor: Colors.green,
onPressed = () {
	_currentPosition = _currentPosition.ceilToDouble();
	_updatePosition(max(--_currentPosition, 0));
},
),
// ignore: non_constant_identifier_names
FloatingActionButton(
child: const Icon(Icons.add),
backgroundColor: Colors.green,
onPressed = () {
	_currentPosition = _currentPosition.floorToDouble();
	_updatePosition(min(
	++_currentPosition,
	_totalDots.toDouble(),
	));
},
)






// ignore: camel_case_types
class _totalDots {
  static toDouble() {}
// ignore: camel_case_types
}class _updatePosition {
  _updatePosition(max);
// ignore: camel_case_types
}class _currentPosition {
  static floorToDouble() {}
  
  static ceilToDouble() {}
}