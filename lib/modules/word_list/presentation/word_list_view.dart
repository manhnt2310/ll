import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ll/modules/word_list/cubit/word_list_cubit.dart';
import 'package:ll/modules/word_list/widgets/word_view.dart';

class WordListView extends StatelessWidget {
  const WordListView({
    Key? key,
    required this.bookId,
  }) : super(key: key);

  final int bookId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WordListCubit, WordListState>(
      builder: (context, state) {
        if (state.words.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        } else {
          final words = state.words;

          return Scaffold(
            appBar: AppBar(
              title: const Center(
                child: Text('Tat ca'),
              ),
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              elevation: 0.5,
            ),
            body: Container(
              padding: const EdgeInsets.all(10),
              child: ListView.separated(
                shrinkWrap: true,
                padding: const EdgeInsets.all(15),
                itemCount: words.length,
                itemBuilder: (context, index) {
                  return WordView(word: words[index]);
                },
                separatorBuilder: (context, index) => const SizedBox(
                  height: 15,
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
