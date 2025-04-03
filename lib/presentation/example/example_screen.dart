import 'package:flutter/material.dart';

class ExampleScreen extends StatefulWidget {
  const ExampleScreen({super.key});

  @override
  State<ExampleScreen> createState() => _ExampleScreenState();
}

class _ExampleScreenState extends State<ExampleScreen> {
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
