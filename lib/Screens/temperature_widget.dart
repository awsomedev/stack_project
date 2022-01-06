import 'dart:math';
import 'package:flutter/material.dart';
import 'package:stack/Constants/app_color.dart';
import 'package:stack/Constants/screen_size.dart';
import 'package:stack/widget/celcius.dart';

class TemperatureWidget extends StatelessWidget {
  const TemperatureWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: height(context) / 3 + 30,
      // height: height(context) / 3 + 20,
      child: Stack(
        children: [
          Center(
            child: SizedBox(
              width: height(context) / 3 + 10,
              height: height(context) / 3 + 10,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: height(context) / 3 - 60,
                      width: height(context) / 3 - 60,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: AppColor.grey.withOpacity(.3),
                            blurRadius: 32,
                          ),
                        ],
                        shape: BoxShape.circle,
                        color: AppColor.lightGrey,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: height(context) / 3 - 120,
                          height: height(context) / 3 - 120,
                          child: Center(
                            child: SizedBox(
                              height: height(context) / 30,
                              width: height(context) / 15,
                              child: CelciusWidget(
                                size: height(context) / 30,
                                temp: '20',
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: AppColor.grey.withOpacity(.2),
                                blurRadius: 32,
                              ),
                            ],
                            shape: BoxShape.circle,
                            color: AppColor.lightGrey,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: height(context) / 3 + 5,
                      height: height(context) / 3 + 5,
                      child: CustomPaint(
                        painter: TempraturePainter(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              left: 1,
              top: height(context) / 6 + 5,
              child: CelciusWidget(
                size: height(context) / 40,
                temp: '14',
              )),
          Positioned(
              right: 0,
              top: height(context) / 6 + 5,
              child: CelciusWidget(
                size: height(context) / 40,
                temp: '28',
              ))
        ],
      ),
    );
  }
}

class TempraturePainter extends CustomPainter {
  TempraturePainter();
  @override
  void paint(Canvas canvas, Size size) {
    var centerX = size.width / 2;
    var centery = size.height / 2;
    var center = Offset(centerX, centery);
    var radius = min(centerX, centery);

    var dashBrush = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 1.5;

    var outerCircleRadius = radius;
    var innerCircleRadius = radius - 10;
    for (double i = 185; i < 270; i += 7) {
      var x1 = centerX + outerCircleRadius * cos(i * pi / 180);
      var y1 = centerX + outerCircleRadius * sin(i * pi / 180);

      var x2 = centerX + innerCircleRadius * cos(i * pi / 180);
      var y2 = centerX + innerCircleRadius * sin(i * pi / 180);
      canvas.drawLine(Offset(x1, y1), Offset(x2, y2), dashBrush);
    }
    var dashBrush2 = Paint()
      ..color = AppColor.grey.withOpacity(.5)
      ..style = PaintingStyle.fill
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 1.5;

    for (double i = 277; i < 360; i += 7) {
      var x1 = centerX + outerCircleRadius * cos(i * pi / 180);
      var y1 = centerX + outerCircleRadius * sin(i * pi / 180);

      var x2 = centerX + innerCircleRadius * cos(i * pi / 180);
      var y2 = centerX + innerCircleRadius * sin(i * pi / 180);
      canvas.drawLine(Offset(x1, y1), Offset(x2, y2), dashBrush2);
    }

    // var pointerBrush = Paint()
    //   ..color = Colors.black
    //   ..style = PaintingStyle.fill;
    // var pointerY = centerX + 100 * sin(266 * pi / 180);
    // var pointerX = centerX + 100 * cos(266 * pi / 180);
    // var pointerEndY = centerX + 100 * sin(274 * pi / 180);
    // var pointerEndX = centerX + 100 * cos(274 * pi / 180);
    // var pointerRefY = centerX + 115 * sin(270 * pi / 180);
    // var pointerRefX = centerX + 115 * cos(270 * pi / 180);
    // var dotPointerY = centerX + 90 * sin(270 * pi / 180);
    // var dotPointerX = centerX + 90 * cos(270 * pi / 180);

    // Path path = Path();
    // path.moveTo(pointerX, pointerY);
    // path.quadraticBezierTo(pointerRefX, pointerRefY, pointerEndX, pointerEndY);

    // canvas.drawPath(
    //   path,
    //   pointerBrush,
    // );
    // canvas.drawCircle(Offset(dotPointerX, dotPointerY), 3, pointerBrush);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // throw UnimplementedError();
    return true;
  }
}
