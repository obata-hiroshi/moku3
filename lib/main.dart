import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TicTacToeBoard(),
  ));
}

class TicTacToeBoard extends StatefulWidget {
  const TicTacToeBoard({Key? key}) : super(key: key);

  @override
  State<TicTacToeBoard> createState() => _TicTacToeBoardState();
}

class _TicTacToeBoardState extends State<TicTacToeBoard> {
  late List<List<String>> _board;

  @override
  void initState() {
    super.initState();
    _board = List.generate(3, (_) => List.generate(3, (_) => ''));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('三目並べ'),
      ),
      body: _buildBoard(),
    );
  }

  Widget _buildBoard() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        children: [
          for (int row = 0; row < 3; row++)
            for (int col = 0; col < 3; col++) _buildCell(row, col),
        ],
      ),
    );
  }

  Widget _buildCell(int row, int col) {
    return GestureDetector(
      onTap: () {
        // TODO: handle cell tap
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
        ),
        alignment: Alignment.center,
        child: Text(
          _board[row][col],
          style: const TextStyle(fontSize: 32),
        ),
      ),
    );
  }
}
