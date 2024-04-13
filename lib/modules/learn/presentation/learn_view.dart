import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ll/modules/learn/cubit/learn_cubit.dart';
import 'package:ll/modules/learn/widgets/word_view.dart';
import 'package:ll/modules/learn/widgets/test_view.dart';

class LearnView extends StatelessWidget {
  const LearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LearnCubit, LearnState>(
      builder: (context, state) {
        if (state.words.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        } else {
          final words = state.words;

          return Scaffold(
            appBar: AppBar(
              title: const Center(child: Text('Learn')),
              actions: const [
                Icon(Icons.settings),
              ],
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              elevation: 0.5,
            ),
            body: Container(
              padding: const EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    WordView(
                      word: words[0],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const TestView(),
                  ],
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
