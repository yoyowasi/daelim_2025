// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:daelim_2025/presentation/common/widgets/white_box.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final double bmi;

  const ResultScreen({
    Key? key,
    required this.bmi,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String bmiString = bmi < 10.0? '0$bmi' : bmi.toString();

    String bmiType ='';
    
    if (bmi < 18.5){
      bmiType ='저체중';
    }else if(18.5 <= bmi && bmi < 23){
      bmiType ='정상 체중';
    }else if(23 <= bmi && bmi < 25){
      bmiType ='과체중';
    }else if(25 <= bmi && bmi <30){
      bmiType ='1단계 비만';
    }else if(30 <= bmi && bmi < 35){
      bmiType ='2단계 비만';
    }else{
      bmiType ='3단계 비만';
    }

    return Scaffold(
      backgroundColor: const Color(0xfff4f3ff),
      appBar: AppBar(
        backgroundColor: const Color(0xfff4f3ff),
        title: const Text('bmi bmiType'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: WhiteBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      fontSize: 40,
                      color: Color(0xff6c63ff),
                    ),
                    children: [
                      TextSpan(
                        text: bmiString.substring(0, 2),
                        style: const TextStyle(fontSize: 120),
                      ),
                      TextSpan(
                        text: bmiString.substring(2),
                        style: const TextStyle(fontSize: 45),
                      ),
                    ],
                  ),
                ),
                Text(bmiType,
                style: TextStyle(fontSize: 24),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
