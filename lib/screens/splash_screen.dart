import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 200,
          child: CustomPaint(
            painter: ArrowPainter(),
          ),
        ),
        Positioned(
          top: 40,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            child: CustomPaint(
              painter: ArrowPainter(),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 80),
          width: MediaQuery.of(context).size.width,
          height: 200,
          child: CustomPaint(
            painter: ArrowPainter(),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 150),
            Icon(
              Icons.chat_outlined,
              size: 100,
              color: Colors.white,
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                'Chat App',
                style: TextStyle(
                    fontFamily: 'SourceSansPro-Regular',
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              alignment: Alignment.center,
              child: Text(
                'Join Millions of People From Around the World',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'SourceSansPro-Regular',
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        )
      ],
    ));
  }
}

class ArrowPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.strokeWidth = 13;

    paint.style = PaintingStyle.stroke;
    paint.color = Colors.white;

    var path = Path();
    path.moveTo(size.width / 3, size.height * 4 / 4);
    path.lineTo(size.width / 2, size.height * 7 / 10);
    path.lineTo(size.width * 3 / 4, size.height * 6 / 6);
    path.lineTo(size.width * 4 / 4, size.height * 6 / 9);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
