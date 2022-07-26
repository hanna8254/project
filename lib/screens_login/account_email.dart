import 'package:flutter/material.dart';
import 'package:mogong/screens_login/search_email.dart';
import '../theme.dart';
import 'log_in.dart';

// 이메일 계정 정보 화면(이메일 찾기)

class AccountEmail extends StatelessWidget {
  const AccountEmail({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(                                  // 뒤로 가기 버튼 생성을 위한 앱바
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: kGreyColor),
          onPressed: () {                             // 클릭하면 이메일 찾기 화면으로 이동(바로 이전)
            Navigator.push(context, MaterialPageRoute(
                builder: (context)=> SearchEmail()));
          },
        ),
      ),

      body: Padding(
        padding: kDefaultPadding,   // 앱바와 타이틀 간 거리
        child: Column (
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Text(
                "입력하신 번호로", style: titleText),
            Text(
                "찾은 계정 정보입니다.", style: titleText),
            SizedBox(height: 25),
            Text(
                "개인정보 보호를 위하여 뒷자리는 ***로 표시됩니다.", style: subTitle
            ),
            SizedBox(height: 10),
            AccountEmailForm(),       // 이메일 계정 정보 구조
          ],
        ),
      ),
    );
  }
}

class AccountEmailForm extends StatefulWidget {
  const AccountEmailForm({Key? key}) : super(key: key);

  @override
  _AccountEmailFormState createState() => _AccountEmailFormState();
}

class _AccountEmailFormState extends State<AccountEmailForm> {

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
        children: [

          // 이메일 계정 정보 보여주기
          SizedBox(height: 10),
          Text(
              "이메일", style: subTitle),
          Text(
              "abc***@email.com", style: subTitle),
          SizedBox(height: 25),

          // 로그인으로 되돌아가기 발급 버튼
          returnButton,
          SizedBox(height: 15),

        ],
      ),

    );
  }
}
