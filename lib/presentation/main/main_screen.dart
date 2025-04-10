import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // 오타: _bulidContainer -> _buildContainer
  Widget _buildContainer() {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F3FF),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, bottom: 90),
          child: Column(
            // 오타: spacing은 Column에 없음, 대신 SizedBox로 간격 조절
            children: [
              const SizedBox(height: 35),
              const Text(
                'BMI CALCULATOR',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 25),
              Row(
                // 오타: Row에도 spacing 없음 -> SizedBox로 처리
                children: [
                  Expanded(child: _buildContainer()),
                  const SizedBox(width: 20),
                  Expanded(child: _buildContainer()),
                ],
              ),
              const SizedBox(height: 25),
              _buildContainer(),
              const SizedBox(height: 25),
              _buildContainer(),
              const SizedBox(height: 25),
              SizedBox(
                width: double.infinity,
                height: 75,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Calculate BMI'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
