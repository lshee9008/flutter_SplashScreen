import 'package:flutter/material.dart';

void main() {
  runApp(const SplashScreen());
}

//StatefulWidget => 위젯의 내부에 서 값이 변경되었을 때 위젯 자체에서 다시 렌더링을 실행시킬 수 있다.
//StatelessWidget => 위젯 내부에서 값이 변경되어도 위젯 자체적으로는 다시 렌더링할 수 없다.
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            color: Colors.black87,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/LEEEE_F06.png',
                    width: 370,
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(
                      Colors.orange,
                    ),
                  ), //동그라미 형태의 로딩 애니메이션 실행 위젯 , LinearProgressIndicator은 일자 형태로 로딩 애니메이션이 실행
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
