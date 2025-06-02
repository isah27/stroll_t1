part of '../global_widgets.dart';

class AppText extends StatelessWidget {
  const AppText({
    super.key,
    required this.text,
    this.size,
    this.color,
    this.fontWeight,
    this.textAlign,
    this.fontStyle,
    this.shadows,
  });

  final String text;
  final double? size;
  final Color? color;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final FontStyle? fontStyle;
  final List<Shadow>? shadows;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: fontWeight,
        fontFamily: StrollStyle.proximaNova,
        fontStyle: fontStyle,
        shadows: shadows,
      ),
    );
  }
}
