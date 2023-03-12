import 'package:flutter/material.dart';
import 'package:ll/core/data_providers/book_data_provider.dart';
import 'package:ll/core/models/book.dart';
import 'package:ll/modules/book_detail/presentation/book_detail_view.dart';
import 'package:ll/modules/home/widgets/book_grid_view.dart';
import '../widgets/statistics_view.dart';
import '../widgets/recent_learning_view.dart';
import '../widgets/review_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final bookDataProvider = BookDataProvider();
    final books = bookDataProvider.getBooks();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Japanese Learning'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0.5,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const StatisticsView(),
              const SizedBox(
                height: 20,
              ),
              RecentLearningView(
                book: books[0],
                onSelectBook: (book) => _goToBookDetailView(context, book),
              ),
              const SizedBox(
                height: 20,
              ),
              ReviewView(
                books: books,
                onSelectBook: (book) => _goToBookDetailView(context, book),
              ),
              const SizedBox(
                height: 20,
              ),
              BookGridView(
                books: books,
                onSelectBook: (book) => _goToBookDetailView(context, book),
              )
            ],
          ),
        ),
      ),
    );
  }

  _goToBookDetailView(BuildContext context, Book book) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BookDetailView(
          book: book,
        ),
      ),
    );
  }
}
