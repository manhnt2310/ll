import 'package:flutter/material.dart';
import 'package:ll/core/models/book.dart';
import 'package:ll/modules/book_detail/widgets/chapter_view.dart';
import 'package:ll/modules/book_detail/widgets/start_learning_button.dart';
import 'package:ll/modules/book_detail/widgets/title_view.dart';
import 'package:ll/modules/book_detail/widgets/top_menu_view.dart';
import 'package:ll/modules/book_detail/widgets/statistics_view.dart';

class BookDetailView extends StatelessWidget {
  const BookDetailView({super.key, required this.book});

  final Book book;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Book Detail'),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0.5,
        ),
        body: Container(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const TitleView(),
                const SizedBox(
                  height: 16,
                ),
                const TopMenuView(
                  totalItems: 10,
                ),
                const SizedBox(
                  height: 15,
                ),
                ChapterView(
                  chapter: book.chapters[0],
                ),
                const SizedBox(
                  height: 5,
                ),
                const StatisticsView(),
                const SizedBox(
                  height: 20,
                ),
                const StartLearningButton(),
              ],
            ),
          ),
        ));
  }
}
