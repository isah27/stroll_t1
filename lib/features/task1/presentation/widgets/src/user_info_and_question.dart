part of '../t1_widgets.dart';

class UserInfoAndQuestion extends StatelessWidget {
  const UserInfoAndQuestion({super.key});

  @override
  Widget build(BuildContext context) {
    final question = context.watch<TSurveyCubit>().currentQuestion;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 22),
              Padding(
                padding: EdgeInsets.only(left: 60),
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

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          right: -80,
          top: 10,
          child: Container(
            padding: EdgeInsets.only(left: 50, right: 10, top: 5, bottom: 5),
            decoration: BoxDecoration(
              color: Color(0xff121517),
              borderRadius: BorderRadius.circular(10),
            ),
            child: AppText(
              text: "Angelina, 28",
              size: 11,
              fontWeight: FontWeight.w700,
              color: StrollColors.primalText,
            ),
          ),
        ),

        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Color(0xff121517), width: 10),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              T1Assets.zoey,
              height: 50,
              width: 50,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
