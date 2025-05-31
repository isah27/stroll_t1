import 'package:flutter/material.dart';
import 'package:svg_image/svg_image.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stroll_t1/config/stroll_configs.dart';
import 'package:stroll_t1/features/task1/data/repo/repo_impl.dart';
import 'package:stroll_t1/features/task1/presentation/cubit/t_survey_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SvgImageConfig.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => TSurveyCubit(RepoImpl()))],
      child: MaterialApp.router(
        title: 'Stroll T1',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: StrollColors.primary),
        ),
        routerConfig: RouteConfig.routerConfig,
      ),
    );
  }
}
