import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ll/modules/learn/cubit/learn_cubit.dart';
import 'package:ll/modules/learn/presentation/learn_view.dart';

class LearnPage extends StatelessWidget {
  const LearnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LearnCubit()..getWordList(),
      child: const LearnView(),
    );
  }
}
