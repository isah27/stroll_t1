part of '../t1_widgets.dart';

class FadedContainer extends StatelessWidget {
  const FadedContainer({super.key, required this.child});

  final Widget child;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      width: size.width,
      decoration: BoxDecoration(
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.white.withValues(alpha: 0.1),
        //     blurRadius: 20,
        //     spreadRadius: 30,
        //   ),
        // ],
        gradient: LinearGradient(
          colors: [
            Color(0xFF000000),
            Color(0xCC000000),
            Color(0x88000000),
            Color(0x44000000),
            Color(0x44000000).withValues(alpha: 0.1),
          ],
          stops: [0.85, 0.90, 0.95, 0.98, 1.0],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
      child: child,
    );
  }
}
