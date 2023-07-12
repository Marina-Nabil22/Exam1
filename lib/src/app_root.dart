import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled6/bloc/quiz_cubit.dart';
import 'package:untitled6/screens/home_page.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => QuizCubit(),
        ),

      ],

      child: MaterialApp(
        home: HomaPage(),
      ),
    );
  }
}
