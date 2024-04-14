import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ll/core/models/book.dart';
import 'package:ll/modules/book_detail/cubit/book_detail_cubit.dart';
import 'package:ll/modules/book_detail/presentation/book_detail_view.dart';

class BookDetailPage extends StatelessWidget {
  const BookDetailPage({Key? key, required this.book}) : super(key: key);

  final Book book;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BookDetailCubit()
        ..getBooks(
          book.id.toString(),
        ),
      child: BookDetailView(book: book),
    );
  }
}
