import 'package:flutter/material.dart';
import 'dart:math' as Math;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: PathPainter(),
    );
  }
}

class PathPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8.0;

    Path path = Path();

    // Moves starting point to the center of the screen
    //path.moveTo(size.width / 2, size.height / 2);

    // Draws a line from left top corner to right bottom
    // path.lineTo(size.width, size.height);

    // path.moveTo(0, size.height / 2);
    // path.quadraticBezierTo(
    //     size.width / 2, size.height, size.width, size.height / 2);

    // path.cubicTo(size.width / 4, 3 * size.height / 4, 3 * size.width / 4,
    //     size.height / 4, size.width, size.height);

    // path.conicTo(
    //     size.width / 4, 3 * size.height / 4, size.width, size.height, 20);

    // double degToRad(double deg) => deg * (Math.pi / 180.0);
    // path.arcTo(
    //     Rect.fromLTWH(
    //         size.width / 2, size.height / 2, size.width / 4, size.height / 4),
    //     degToRad(0),
    //     degToRad(90),
    //     true);

    // path.addRect(Rect.fromLTWH(
    //     size.width / 2, size.height / 2, size.width / 4, size.height / 4));

    canvas.drawPath(path, paint);
    path.close();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
