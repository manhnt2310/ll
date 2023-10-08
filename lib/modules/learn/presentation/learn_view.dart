import 'package:flutter/material.dart';
import 'package:ll/core/models/word.dart';
import 'package:ll/modules/learn/widgets/word_view.dart';
import 'package:ll/modules/learn/widgets/test_view.dart';
import '../../../core/data_providers/word_data_provider.dart';

class LearnView extends StatefulWidget {
  const LearnView({super.key});

  @override
  State<LearnView> createState() => _LearnViewState();
}

class _LearnViewState extends State<LearnView> {
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
        return Container();
      },
    );
  }
}
