import 'package:auto_route/auto_route.dart';
import 'package:demux_assignment/application/questions/questions_bloc.dart';
import 'package:demux_assignment/presentation/core/theme/theme.dart';
import 'package:demux_assignment/presentation/routes/router.gr.dart' as route;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../injection.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<QuestionsBloc>()..add(const QuestionsEvent.initial()),
        )
      ],
      child: MaterialApp(
        title: 'Demux Assignment',
        debugShowCheckedModeBanner: false,
        theme: appTheme,
        builder: ExtendedNavigator(
          router: route.Router(),
        ),
      ),
    );
  }
}
