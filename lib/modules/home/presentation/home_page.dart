import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ll/modules/home/cubit/home_cubit.dart';
import 'package:ll/modules/home/presentation/home_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit()..getBooks(),
      child: const HomeView(),
    );
  }
}
