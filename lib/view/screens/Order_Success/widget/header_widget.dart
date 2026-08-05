import 'package:flutter/material.dart';
class SuccessHeader extends StatelessWidget {
  const SuccessHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 24,horizontal: 16),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned.fill(child: CustomPaint(
            painter: ConfettiPatternPainter(),
          )),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  color: Color(0XFF2EA043),
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.check,color: Colors.white,size: 45,),
              ),
              SizedBox(height: 18,),
              Text("Order placed Successfully!",
              textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
                    color:Colors.black,
                    decoration: TextDecoration.none,
                    height: 1.2),

              ),
              SizedBox(height: 18,),
              Text("Thank you for your order.We have received your order and will process it soon.",

              textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                  decoration: TextDecoration.none
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
class ConfettiPatternPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawRect(Offset.zero & size,
      Paint()..color = const Color(0XFFF0FFF0)
    );
    final paint = Paint()..style = PaintingStyle.fill;

    final dots = [
      {'x': size.width * 0.25, 'y': size.height * 0.15, 'color': const Color(0xFFFFB74D)},
      {'x': size.width * 0.75, 'y': size.height * 0.12, 'color': const Color(0xFFFFB74D)},
      {'x': size.width * 0.18, 'y': size.height * 0.35, 'color': const Color(0xFF4FC3F7)},
      {'x': size.width * 0.82, 'y': size.height * 0.38, 'color': const Color(0xFF4FC3F7)},
      {'x': size.width * 0.22, 'y': size.height * 0.65, 'color': const Color(0xFFFF8A65)},
      {'x': size.width * 0.78, 'y': size.height * 0.68, 'color': const Color(0xFF81C784)},
    ];

    for (var dot in dots) {
      paint.color = dot['color'] as Color;
      canvas.drawCircle(
        Offset(dot['x'] as double, dot['y'] as double),
        3.5,
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
