import 'package:flutter/material.dart';
import 'package:ll/modules/word_list/widgets/word_view.dart';
import '../../../core/data_providers/word_data_provider.dart';
import '../../../core/models/word.dart';

class WordListView extends StatelessWidget {
  const WordListView({
    super.key,
    required this.bookId,
  });

  final int bookId;

  @override
  Widget build(BuildContext context) {
    final wordDataProvider = WordDataProvider();

    return FutureBuilder(
      future: wordDataProvider.getWords(1),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        }
        if (snapshot.hasData) {
          var words = snapshot.data as List<Word>;

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
              child: SingleChildScrollView(
                child: ListView.separated(
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(15),
                  itemCount: words.length,
                  itemBuilder: (context, index) {
                    return WordView(word: words[index]);
                  },
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 10,
                  ),
                ),
              ),
            ),
          );
        }
        return Container();
      },
    );
  }
}
