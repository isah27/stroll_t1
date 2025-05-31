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
        ),
        Icon(Icons.keyboard_arrow_down, color: StrollColors.lightPrimary),
      ],
    );
  }
}
