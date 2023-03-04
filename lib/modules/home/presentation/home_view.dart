import 'package:flutter/material.dart';
import '../widgets/statistics_view.dart';
import '../widgets/recent_learning_view.dart';

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
        child: Column(
          children: const [
            StatisticsView(),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 16,
            ),
            RecentLearningView()
          ],
        ),
      ),
    );
  }
}
