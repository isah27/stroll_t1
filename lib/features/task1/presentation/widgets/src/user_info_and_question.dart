part of '../t1_widgets.dart';

class UserInfoAndQuestion extends StatelessWidget {
  const UserInfoAndQuestion({super.key});

  @override
  Widget build(BuildContext context) {
    final question = context.watch<TSurveyCubit>().currentQuestion;
    return Row(
      spacing: 5,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.asset(T1Assets.zoey),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 5, bottom: 2),
                child: AppText(
                  text: "Angelina, 28",
                  size: 11,
                  fontWeight: FontWeight.w700,
                  color: StrollColors.primalText,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 3),
                child: AppText(
                  text: question?.question ?? "",
                  size: 20,
                  fontWeight: FontWeight.w700,
                  color: StrollColors.primalText,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
