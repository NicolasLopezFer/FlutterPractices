import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: MiApp(),
    );
  }
}

class MiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: <Widget>[
            Container(
              height: double.infinity,
              width: double.infinity,
              child: CustomPaint(
                painter: AmarilloSuperior(),
              ),
            ),
            Container(
              height: double.infinity,
              width: double.infinity,
              child: CustomPaint(
                painter: AmarilloInferior(),
              ),
            ),
            Container(
              height: double.infinity,
              width: double.infinity,
              child: CustomPaint(
                painter: CremaSuperior(),
              ),
            ),
            Container(
              height: double.infinity,
              width: double.infinity,
              child: CustomPaint(
                painter: CremaInferior(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AmarilloSuperior extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = new Paint()
      ..color = Color(0xffF7F6DD)
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.fill;

    final path = new Path();

    path.moveTo(size.width * 0.25, 0);
    path.quadraticBezierTo(
        size.width * 0.4, size.height * 0.6, size.width, size.height * 0.6);
    path.lineTo(size.width, 0);
    path.lineTo(size.width * 0.25, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(AmarilloSuperior oldDelegate) => true;
}

class AmarilloInferior extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = new Paint()
      ..color = Color(0xffF7F6DD)
      ..strokeWidth = 5
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.fill;

    final path = new Path();

    path.moveTo(0, size.height * 0.40);
    path.quadraticBezierTo(
        size.width * 0.6, size.height * 0.6, size.width * 0.65, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, size.height * 0.4);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(AmarilloInferior oldDelegate) => true;
}

class CremaSuperior extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = new Paint()
      ..color = Color(0xffFFD4C4)
      ..strokeWidth = 5
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.fill;

    final path = new Path();

    path.moveTo(size.width * 0.60, 0);
    path.quadraticBezierTo(
        size.width * 0.7, size.height * 0.3, size.width, size.height * 0.35);
    path.lineTo(size.width, 0);
    path.lineTo(size.width * 0.25, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CremaSuperior oldDelegate) => true;
}

class CremaInferior extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = new Paint()
      ..color = Color(0xf1FFD4C4)
      ..strokeWidth = 5
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.fill;

    final path = new Path();

    path.moveTo(0, size.height * 0.65);
    path.quadraticBezierTo(
        size.width * 0.3, size.height * 0.8, size.width * 0.4, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, size.height * 0.4);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CremaInferior oldDelegate) => true;
}
