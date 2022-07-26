import 'package:flutter/material.dart';
import 'package:mogong/screens_login/search_email.dart';
import 'package:mogong/screens_login/search_password.dart';
import 'package:mogong/screens_login/log_in.dart';


// 이동 가능한 루트들을 나타냄

final Map <String, WidgetBuilder> routes = {

  LogInScreen.routeName: (context) => LogInScreen(),          //메인 로그인 화면을 나타내는 경로 이름
  SearchEmail.routeName: (context) => SearchEmail(),          // 이메일 찾기
  SearchPassword.routeName: (context) => SearchPassword(),    // 비밀번호 찾기

};