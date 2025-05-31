part of '../t1_widgets.dart';

class RoomDetails extends StatelessWidget {
  const RoomDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 15,
      children: [
        IConWithLabel(label: "22h 00m", iconPath: T1Assets.timer),
        IConWithLabel(label: "103", iconPath: T1Assets.userCounter),
      ],
    );
  }
}

class IConWithLabel extends StatelessWidget {
  const IConWithLabel({super.key, required this.iconPath, required this.label});
  final String iconPath, label;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 3,
      children: [
        iconPath.svg(color: StrollColors.white),
        AppText(
          text: label,
          color: StrollColors.white,
          size: 12,
          fontWeight: FontWeight.w600,
          textAlign: TextAlign.end,
        ),
      ],
    );
  }
}
