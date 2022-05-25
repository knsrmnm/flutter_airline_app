import 'dart:ui';

import 'package:flutter/material.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {

  final double _totalHeight = 500.0;
  final double _codeHeight = 150.0;
  final double _infoHeight = 300.0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF194c70),
      appBar: AppBar(
        backgroundColor: Color(0xFF194c70),
        elevation: 0,
        leading: Icon(Icons.arrow_back_ios_outlined, color: Colors.white),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 40.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text('NRT', style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.w600, color: Colors.white)),
                    const SizedBox(height: 5.0),
                    Text('Narita', style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w300, color: Colors.white)),
                  ],
                ),
                const SizedBox(width: 55.0),
                Image.asset("assets/icons/airplane.png", width: 30.0),
                const SizedBox(width: 55.0),
                Column(
                  children: [
                    Text('LHR', style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.w600, color: Colors.white)),
                    const SizedBox(height: 5.0),
                    Text('Heathrow', style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w300, color: Colors.white)),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 50.0),
            Container(
              width: size.width - 80,
              height: _totalHeight,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: _TicketShapeBorder(width: 1, radius: 30.0),
              ),
              child: Column(
                children: [
                  Container(
                    height: _codeHeight,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/images/code.png"))
                        ),
                      )
                    ),
                  ),
                  Container(
                    width: size.width - 110, height: 1.0, color: Colors.grey[300],
                  ),
                  const SizedBox(height: 50.0),
                  Container(
                    height: _infoHeight - 50,
                    child: Column(
                      children: [
                        Container(
                          height: _infoHeight*0.7,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(width: 5.0),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('FLIGHT CODE', style: TextStyle(fontSize: 10.0, color: Color(0xFFB6CEDC))),
                                  const SizedBox(height: 5.0),
                                  Text('EY 871', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w700, color: Color(0xFF194c70))),
                                  const SizedBox(height: 30.0),
                                  Text('SEAT', style: TextStyle(fontSize: 10.0, color: Color(0xFFB6CEDC))),
                                  const SizedBox(height: 5.0),
                                  Text('16F', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w700, color: Color(0xFF194c70))),
                                  const SizedBox(height: 30.0),
                                  Text('CLASS', style: TextStyle(fontSize: 10.0, color: Color(0xFFB6CEDC))),
                                  const SizedBox(height: 5.0),
                                  Text('Economy', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w700, color: Color(0xFF194c70))),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('BOARDING TIME', style: TextStyle(fontSize: 10.0, color: Color(0xFFB6CEDC))),
                                  const SizedBox(height: 5.0),
                                  Text('17:00', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w700, color: Color(0xFF194c70))),
                                  const SizedBox(height: 30.0),
                                  Text('FLIGHT DATE', style: TextStyle(fontSize: 10.0, color: Color(0xFFB6CEDC))),
                                  const SizedBox(height: 5.0),
                                  Text('May 31', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w700, color: Color(0xFF194c70))),
                                  const SizedBox(height: 30.0),
                                  Text('AIRCRAFT', style: TextStyle(fontSize: 10.0, color: Color(0xFFB6CEDC))),
                                  const SizedBox(height: 5.0),
                                  Text('Boeing 787', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w700, color: Color(0xFF194c70))),
                                ],
                              ),
                              const SizedBox(width: 5.0),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        Container(
                          height: _infoHeight*0.09,
                          decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/images/etihad.png"))
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _TicketShapeBorder extends ShapeBorder {
  final double? width;
  final double? radius;

  _TicketShapeBorder({
    required this.width,
    required this.radius,
  });

  @override
  EdgeInsetsGeometry get dimensions {
    return EdgeInsets.all(width!);
  }

  @override
  ShapeBorder scale(double t) {
    return _TicketShapeBorder(
      width: width! * t,
      radius: radius! * t,
    );
  }

  @override
  ShapeBorder? lerpFrom(ShapeBorder? a, double t) {
    if (a is _TicketShapeBorder)
      return _TicketShapeBorder(
        width: lerpDouble(a.width, width, t),
        radius: lerpDouble(a.radius, radius, t),
      );
    return super.lerpFrom(a, t);
  }

  @override
  ShapeBorder? lerpTo(ShapeBorder? b, double t) {
    if (b is _TicketShapeBorder)
      return _TicketShapeBorder(
        width: lerpDouble(width, b.width, t),
        radius: lerpDouble(radius, b.radius, t),
      );
    return super.lerpTo(b, t);
  }

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    return getOuterPath(
      rect.deflate(width!),
      textDirection: textDirection,
    );
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    final r = radius!;
    final w = rect.size.width; // 全体の横幅
    final h = rect.size.height; // 全体の縦幅
    final hl = h / 3; // ロゴ部分の縦幅
    return Path()
      ..addPath(
        Path()
          ..moveTo(r, 0)
          ..lineTo(w - r, 0) // →
          ..arcToPoint(Offset(w, r), radius: Radius.circular(r))
          ..lineTo(w, hl - 35) // ↓
          ..arcToPoint(
            Offset(w, hl),
            radius: Radius.circular(20),
            clockwise: false,
          )
          ..lineTo(w, h - r) // ↓
          ..arcToPoint(Offset(w - r, h), radius: Radius.circular(r))
          ..lineTo(r, h) // ←
          ..arcToPoint(Offset(0, h - r), radius: Radius.circular(r))
          ..lineTo(0, hl) // ↑
          ..arcToPoint(
            Offset(0, hl - 35),
            radius: Radius.circular(20),
            clockwise: false,
          )
          ..lineTo(0, r) // ↑
          ..arcToPoint(Offset(r, 0), radius: Radius.circular(r)),
        Offset(rect.left, rect.top),
      );
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = width!
      ..color = Colors.white;
    canvas.drawPath(
      getOuterPath(
        rect.deflate(width! / 2.0),
        textDirection: textDirection,
      ),
      paint,
    );
  }
}