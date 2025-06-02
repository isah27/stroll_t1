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
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(size.height * 0.2),
        child: SafeArea(
          child: Column(
            children: [SizedBox(height: 5), const Header(), RoomDetails()],
          ),
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Container(
                      width: size.width,
                      height: size.height,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        image: DecorationImage(
                          image: AssetImage(T1Assets.backgroungIMG),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        gradient: LinearGradient(
                          colors: [
                            Color(0xff0F1115).withValues(alpha: 0.0),
                            Color(0xff0D0E12).withValues(alpha: 0.28),
                            Color(0xff0B0C0F).withValues(alpha: 0.64),
                            Color(0xff000000),
                          ],
                          stops: [0, 0.4, 0.7, 1.0],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.black,

              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(top: -22, child: UserInfo()),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                    child: Column(
                      children: [
                        UserInfoAndQuestion(),
                        QOptions(),
                        SizedBox(height: size.height * 0.02),
                        InstructionAndNextPrevButton(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
