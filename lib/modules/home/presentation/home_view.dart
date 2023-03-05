import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../widgets/statistics_view.dart';
import '../widgets/recent_learning_view.dart';
import '../widgets/review_view.dart';
import '../widgets/book_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
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
            children: const [
              StatisticsView(),
              SizedBox(
                height: 20,
              ),
              RecentLearningView(),
              SizedBox(
                height: 20,
              ),
              ReviewView(),
              SizedBox(
                height: 20,
              ),
              BookView(),
            ],
          ),
        ),
      ),
    );
  }
}
