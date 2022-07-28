import 'package:flutter/material.dart';
import 'package:mogong/screens_login/search_email.dart';
import 'package:mogong/screens_login/search_password.dart';
import '../theme.dart';

// noAccount.dart 파일은 메인 로그인에서 이메일 찾기와 비밀번호 찾기 클릭 시 나타나는 화면 이동

class NoAccount extends StatelessWidget {
  const NoAccount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(                                       // 메인 로그인에서 이메일 찾기 버튼 누르면 -> 이메일 찾기 화면으로 이동
          onTap: () => Navigator.popAndPushNamed(
              context, SearchEmail.routeName),
          child: Text(
              "이메일 찾기", style: subTitle),
        ),
        SizedBox(width: 11),

        Text("|", style: subTitle),

        SizedBox(width: 11),

        GestureDetector(                                    // 메인 로그인에서 비밀번호 찾기를 누르면 비밀번호 찾기 페이지로 이동
          onTap: () => Navigator.popAndPushNamed(
              context, SearchPassword.routeName),
          child: Text(
              "비밀번호 찾기", style: subTitle),
        ),

      ],

    );
  }
}
