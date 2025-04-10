import 'package:daelim_2025/app/router/app_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  final _title = 'Get Started with\nTracking Your Health!';
  final _desc =
      'Calculate your BMI and stay on top of your wellness journey, effortlessly.';
  TextStyle get _titleStyle =>
      TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold);

  TextStyle get _descStyle => TextStyle(color: Color(0xFFC6C3F9), fontSize: 15);

  // 앱 이름
  Widget _buildAppName() {
    return Text(
      'BMI Calculator',
      style: TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  //타이틀 위젯
  Widget _buildTitle() {
    return Text(
      _title,
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
      _desc,
      style: TextStyle(color: Color(0xFFC6C3F9), fontSize: 15),
    );
  }

  // 타이틀과 설명을 묶은 위젯
  Widget _buildTitleDesc() {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: _title, style: _titleStyle),
          TextSpan(text: '\n'),
          WidgetSpan(child: SizedBox(height: 30)),
          TextSpan(text: _desc, style: _descStyle),
        ],
      ),
    );
  }

  // 시작 버튼 위젯
  Widget _buildStartButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: () =>
          context.go(AppRoute.main.toPath,
          ),
        
        style: ElevatedButton.styleFrom(foregroundColor: Color(0xff081854)),
        child: Text('Get Started'),
      ),
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
                _buildTitleDesc(),
                // SizedBox(height: 95),
                // Column(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [

                //     // _buildTitle(),
                //     // SizedBox(height: 15),
                //     // _bulidDescription(),
                //     // SizedBox(height: 40),
                //   ],
                // ),
                _buildStartButton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
