import 'package:flutter/material.dart';
import 'package:ll/modules/book_detail/widgets/title_view.dart';
import 'package:ll/modules/book_detail/widgets/top_menu_view.dart';

class BookDetailView extends StatelessWidget {
  const BookDetailView({super.key});

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
              children: const [
                TitleView(),
                SizedBox(
                  height: 16,
                ),
                TopMenuView(totalItems: 20)
              ],
            ),
          ),
        ));
  }
}
