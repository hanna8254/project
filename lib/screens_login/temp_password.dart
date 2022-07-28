import 'package:flutter/material.dart';
import 'package:mogong/screens_login/search_password.dart';

import '../theme.dart';
import 'log_in.dart';

// 임시 비밀번호 발급

class TempPassword extends StatelessWidget {
  const TempPassword({Key? key}) : super(key: key);

  static String routeName = "/temp_password";    // 라우트 이름을 /temp_password로 지정

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(                                  // 뒤로 가기 버튼 생성을 위한 앱바
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: kGreyColor),
          onPressed: () {                             // 클릭하면 비밀번호 찾기 화면으로 이동(바로 이전)
            Navigator.push(context, MaterialPageRoute(
                builder: (context)=> SearchPassword()));
          },
        ),
      ),

      body: Padding(
        padding: kDefaultPadding,   // 앱바와 타이틀 간 거리
        child: Column (
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Text(
                "임시 비밀번호가", style: titleText),
            Text(
                "발급되었습니다.", style: titleText),
            SizedBox(height: 18),
            Text(
                "로그인 후 비밀번호를 변경해 주세요.", style: destext
            ),
            SizedBox(height: 30),
            TempPassForm(),       // 임시 비밀번호 관련 구조
          ],
        ),
      ),
    );
  }
}

class TempPassForm extends StatefulWidget {
  const TempPassForm({Key? key}) : super(key: key);

  @override
  _TempPassFormState createState() => _TempPassFormState();
}

class _TempPassFormState extends State<TempPassForm> {

  final _formKey = GlobalKey<FormState>();   // 밑에 form key


  @override
  Widget build(BuildContext context) {

    final returnButton = Material(                // 로그인으로 되돌아가기 버튼
      elevation: 5,
      color: kPrimaryColor,
      borderRadius: BorderRadius.circular(30),
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),  // 여백(로그인 버튼)
        minWidth: MediaQuery.of(context).size.width,   // 다음 버튼 크기
        onPressed: () {                            // 되돌아가기 버튼 누르면 작동(메인 로그인 화면으로 이동)
          Navigator.push(context, MaterialPageRoute(
              builder: (context)=> LogInScreen()));
        },       
        child: Text("로그인으로 돌아가기", textAlign: TextAlign.center,
          style: textButton,    // theme.dart 파일
        ),
      ),
    );

    return Form(
      key: _formKey,

      child: Column(         // 열
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          // 임시 비밀번호 보여주기
          SizedBox(height: 20),
          Text(
              "임시 비밀번호", style: subTitle),
          Text(
              "afuegs15682", style: emailtext),
          SizedBox(height: 30),

          // 로그인으로 되돌아가기 발급 버튼
          returnButton,
          SizedBox(height: 15),

        ],
      ),

    );
  }
}

