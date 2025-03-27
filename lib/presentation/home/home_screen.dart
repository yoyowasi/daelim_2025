import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _count = 0;

  void _handleIncreaseCount() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 11, 178),
        title: Text('Flutter Demo'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _handleIncreaseCount();
        },
        child: Icon(Icons.add),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('버튼 클릭시 횟수 증가', style: TextStyle(fontSize: 34)),
              Text('$_count', style: TextStyle(fontSize: 40)),
            ],
          ),
        ),
      ),
    );
  }
}
