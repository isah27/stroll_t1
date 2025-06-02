part of '../t1_widgets.dart';

class QOptions extends StatelessWidget {
  const QOptions({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final question = context.watch<TSurveyCubit>().currentQuestion;
    final options = question?.options ?? [];
    return Column(
      children: [
        AppText(
          text:
              question?.selectedOption != null
                  ? '“Mine is definitely ${question!.selectedOption?.text}.”'
                  : "please select an option",
          size: 12,
          color: StrollColors.lightPrimary,
          fontWeight: FontWeight.w400,
          textAlign: TextAlign.center,
          fontStyle: FontStyle.italic,
        ),
        SizedBox(height: size.height * 0.02),
        SizedBox(
          width: size.width,
          child: Wrap(
            runSpacing: 10,
            alignment: WrapAlignment.spaceBetween,
            children:
                options.map((option) {
                  return SingleOptions(option: option);
                }).toList(),
          ),
        ),
      ],
    );
  }
}

class SingleOptions extends StatelessWidget {
  const SingleOptions({super.key, required this.option});
  final Option option;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final selectedOption =
        context.watch<TSurveyCubit>().currentQuestion?.selectedOption;
    var isSelected = selectedOption == option;
    return InkWell(
      onTap: () {
        context.read<TSurveyCubit>().selectOption(option);
      },
      child: Container(
        width: size.width * 0.42,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color(0xff232A2E),
          borderRadius: BorderRadius.circular(10),
          border:
              isSelected
                  ? Border.all(color: StrollColors.primary, width: 2)
                  : null,
        ),
        child: Row(
          spacing: 8,
          children: [
            Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: isSelected ? StrollColors.primary : null,
                border: Border.all(
                  color: isSelected ? StrollColors.primary : Color(0xffC4C4C4),
                ),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: AppText(
                  text: option.tag,
                  size: 12,
                  textAlign: TextAlign.center,
                  color: isSelected ? Colors.white : Color(0xffC4C4C4),
                ),
              ),
            ),
            Expanded(
              child: AppText(text: option.text, color: Color(0xffC4C4C4)),
            ),
          ],
        ),
      ),
    );
  }
}
