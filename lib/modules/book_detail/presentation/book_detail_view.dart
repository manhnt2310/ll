import 'package:flutter/material.dart';
import 'package:ll/core/models/book.dart';
import 'package:ll/modules/book_detail/widgets/chapter_view.dart';
import 'package:ll/modules/book_detail/widgets/section_list_view.dart';
import 'package:ll/modules/book_detail/widgets/start_learning_button.dart';
import 'package:ll/modules/book_detail/widgets/title_view.dart';
import 'package:ll/modules/book_detail/widgets/top_menu_view.dart';
import 'package:ll/modules/book_detail/widgets/statistics_view.dart';
import 'package:ll/modules/word_list/presentation/word_list_view.dart';

class BookDetailView extends StatefulWidget {
  const BookDetailView({
    super.key,
    required this.book,
  });

  final Book book;

  @override
  State<BookDetailView> createState() => _BookDetailViewState();
}

class _BookDetailViewState extends State<BookDetailView> {
  int _selectedChapterIndex = 0;

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
              TitleView(
                cover: widget.book.cover,
                title: widget.book.title,
              ),
              const SizedBox(
                height: 16,
              ),
              TopMenuView(
                totalItems: widget.book.chapters.length,
                onSelectItemAtIndex: _onTopMenuSelectItemAtIndex,
              ),
              const SizedBox(
                height: 15,
              ),
              if (_selectedChapterIndex > 0)
                ChapterView(
                  chapter: widget.book.chapters[_selectedChapterIndex - 1],
                  onSelectSection: _onChapterViewSelectSection,
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
  }

  void _onTopMenuSelectItemAtIndex(int index) {
    debugPrint(index.toString());

    setState(() {
      _selectedChapterIndex = index;
    });
  }

  void _onChapterViewSelectSection() {
    showDialog(
      context: context,
      builder: (context) => SectionListView(
        chapter: widget.book.chapters[_selectedChapterIndex - 1],
      ),
    );
  }
}
