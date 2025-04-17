import 'package:daelim_2025/presentation/common/widgets/white_box.dart';
import 'package:daelim_2025/presentation/main/widgets/height_box.dart';
import 'package:daelim_2025/presentation/main/widgets/in_de_container.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _age = 0;
  int _weight = 0;
  
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
              // #region 나이,몸무게 입력력
              const SizedBox(height: 25),
              Row(
                // 오타: Row에도 spacing 없음 -> SizedBox로 처리
                children: [
                  Expanded(child: InDeContainer(
                    title: 'Age', 
                    value: _age, 
                    onMinus: () { 
                      if(_age > 0){
                        setState(() => _age--);
                        
                      }
                      debugPrint('Age: 마이너스 클릭');
                     }, 
                    onPlus: () {  
                      setState(() => _age++);
                      debugPrint('Age: 플러스 클릭');
                    },
                  )),
                  const SizedBox(width: 20),
                  Expanded(child: InDeContainer(
                    title: 'Weight (KG)', 
                    value: _weight, 
                    onMinus: () { 
                      if(_weight == 0){return;}
                      setState(() => _weight--);
                      debugPrint('Weight: 마이너스 클릭');
                     }, 
                    onPlus: () {  
                      setState(() => _weight++);
                      debugPrint('Weight: 플러스 클릭');
                    },
                  )),
                ],
              ),
              const SizedBox(height: 25),
              HeightBox(
                
                )
              ,
              const SizedBox(height: 25),
              WhiteBox(
                padding: EdgeInsets.all(25),
                child: SizedBox.shrink(),
              ),
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
