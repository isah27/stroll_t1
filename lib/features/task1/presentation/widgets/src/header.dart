part of '../t1_widgets.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Row(
      spacing: size.width * 0.01,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppText(
          text: "Stroll Bonfire",
          size: 34,
          fontWeight: FontWeight.w700,
          color: StrollColors.lightPrimary,
          shadows: [
            Shadow(
              color: Colors.black.withValues(alpha: 0.2),
              blurRadius: 7.9,
              offset: Offset(0, 0),
            ),
            Shadow(
              color: Color(0xffBEBEBE),
              blurRadius: 2,
              offset: Offset(0, 0),
            ),
          ],
        ),
        Icon(Icons.keyboard_arrow_down, color: StrollColors.lightPrimary),
      ],
    );
  }
}
