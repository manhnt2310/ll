import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ll/core/models/book.dart';
import 'package:ll/modules/book_detail/cubit/book_detail_cubit.dart';
import 'package:ll/modules/book_detail/widgets/chapter_view.dart';
import 'package:ll/modules/book_detail/widgets/section_list_view.dart';
import 'package:ll/modules/book_detail/widgets/start_learning_button.dart';
import 'package:ll/modules/book_detail/widgets/title_view.dart';
import 'package:ll/modules/book_detail/widgets/top_menu_view.dart';
import 'package:ll/modules/book_detail/widgets/statistics_view.dart';

class BookDetailView extends StatelessWidget {
  const BookDetailView({
    Key? key,
    required this.book,
  }) : super(key: key);

  final Book book;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookDetailCubit, BookDetailState>(
      builder: (context, state) {
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
                  TitleView(
                    cover: book.cover,
                    title: book.title,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TopMenuView(
                    totalItems: book.chapters.length,
                    onSelectItemAtIndex: (index) =>
                        _onTopMenuSelectItemAtIndex(context, index),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  if (state.selectedChapterIndex > 0)
                    ChapterView(
                      chapter: book.chapters[state.selectedChapterIndex - 1],
                      onSelectSection: () =>
                          _onChapterViewSelectSection(context),
                    ),
                  const SizedBox(
                    height: 5,
                  ),
                  const StatisticsView(
                    icon: Icon(Icons.check),
                    title: '',
                    subtitle: '',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const StartLearningButton(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void _onTopMenuSelectItemAtIndex(BuildContext context, int index) {
    context.read<BookDetailCubit>().selectChapter(index);
  }

  void _onChapterViewSelectSection(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => SectionListView(
        chapter: book.chapters[
            context.read<BookDetailCubit>().state.selectedChapterIndex - 1],
      ),
    );
  }
}
