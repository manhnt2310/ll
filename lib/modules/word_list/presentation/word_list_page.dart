import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ll/modules/word_list/cubit/word_list_cubit.dart';
import 'package:ll/modules/word_list/presentation/word_list_view.dart';

class WordListPage extends StatelessWidget {
  const WordListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WordListCubit()..getWordList(),
      child: const WordListView(
        bookId: 1,
      ),
    );
  }
}
