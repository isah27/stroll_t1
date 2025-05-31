import 'package:flutter/material.dart';
import 'package:stroll_t1/global_widgets/global_widgets.dart';
import 'package:stroll_t1/features/task1/data/repo/t1_assets.dart';
import 'package:stroll_t1/features/task1/presentation/widgets/t1_widgets.dart';

class T1SurveyPage extends StatelessWidget {
  const T1SurveyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(T1Assets.backgroungIMG),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: size.height * 0.02),
              const Header(),
              RoomDetails(),
              const Spacer(),
              FadedContainer(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Column(
                    children: [
                      UserInfoAndQuestion(),
                      SizedBox(height: size.height * 0.01),
                      QOptions(),
                      SizedBox(height: size.height * 0.03),
                      InstructionAndNextPrevButton(),
                      SizedBox(height: size.height * 0.04),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
