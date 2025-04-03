import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  // 앱 이름
  Widget _buildAppName() {
    return Text(
      'BMI Calculator',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 30,
        fontStyle: FontStyle.italic,
      ),
    );
  }

  //타이틀 위젯
  Widget _buildTitle() {
    return Text(
      'Get Started with\nTracking Your Health!',
      style: TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  // 타이틀 설명
  Widget _bulidDescription() {
    return Text(
      'Calculate your BMI and stay on top of your wellness journey, effortlessly.',
      style: TextStyle(color: Color(0xFFC6C3F9), fontSize: 15),
    );
  }

  // 시작 버튼 위젯
  Widget _buildStartButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(onPressed: () {}, child: Text('Get Started')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF6C63FF),
      body: SafeArea(
        child: Center(
          child: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildAppName(),
                SizedBox(height: 60),
                Image.asset('assets/images/bmi_bike.png'),
                SizedBox(height: 95),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildTitle(),
                    SizedBox(height: 15),
                    _bulidDescription(),
                    SizedBox(height: 40),
                  ],
                ),
                _buildStartButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
