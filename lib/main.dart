import 'package:flutter/material.dart';
import 'package:mogong/components/routs.dart';
import 'package:mogong/screens_login/log_in.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'mogong',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Noto_Sans_KR', // font 설정
      ),
      debugShowCheckedModeBanner: false,                  // debug 표시 없애기(화면)

      initialRoute: LogInScreen.routeName,           // 가장 처음 라우트가 loginscreen(스플래시 -> 메인 로그인)
      routes: routes,

    );
  }
}



