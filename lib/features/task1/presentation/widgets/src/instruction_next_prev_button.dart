part of '../t1_widgets.dart';

class InstructionAndNextPrevButton extends StatelessWidget {
  const InstructionAndNextPrevButton({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final watchSurvey = context.watch<TSurveyCubit>();
    final question = watchSurvey.currentQuestion;
    final showPrev =
        watchSurvey.currentQuestion != watchSurvey.questions.firstOrNull;
    final showNext =
        watchSurvey.currentQuestion != watchSurvey.questions.lastOrNull;
    if (question == null) {
      return SizedBox.shrink();
    }
    return Row(
      children: [
        Expanded(
          child: AppText(
            text: "Pick your option.\nSee who has a similar mind.",
            color: StrollColors.secondaryText,
            size: 12,
          ),
        ),
        Visibility(
          visible: showPrev,
          child: InkWell(
            onTap: () {
              context.read<TSurveyCubit>().previousQuestion();
            },
            child: Transform.flip(flipX: true, child: T1Assets.next.svg()),
          ),
        ),
        SizedBox(width: size.width * 0.02),

        T1Assets.microphone.svg(),
        SizedBox(width: size.width * 0.02),

        Visibility(
          visible: showNext,
          child: InkWell(
            onTap: () {
              context.read<TSurveyCubit>().nextQuestion();
            },
            child: T1Assets.next.svg(),
          ),
        ),
      ],
    );
  }
}
