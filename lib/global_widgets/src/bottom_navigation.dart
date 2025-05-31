part of '../global_widgets.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GlobalAssets.b1.svg(),
          GlobalAssets.b2.svg(),
          Badge.count(
            count: 10,
            backgroundColor: StrollColors.primary,
            child: GlobalAssets.b3.svg(),
          ),
          GlobalAssets.b4.svg(),
        ],
      ),
    );
  }
}
