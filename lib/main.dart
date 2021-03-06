import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sodoku_app/data/repository/puzzle_repository.dart';
import 'package:sodoku_app/logic/bloc/puzzle/puzzle_cubit.dart';
import 'package:sodoku_app/presentation/main_page.dart';

void main() {
  final PuzzleRepository puzzleRepository = PuzzleRepository();
  runApp(App(puzzleRepository: puzzleRepository,));
}

class App extends StatelessWidget {
  final PuzzleRepository puzzleRepository;

  const App({Key? key, required this.puzzleRepository}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PuzzleCubit(puzzleRepository),
      child: MaterialApp(
        home: MainPage(),
      ),
    );
  }
}
