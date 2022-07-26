import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mogong/screens_login/log_in.dart';
import 'package:mogong/screens_login/temp_password.dart';
import 'package:mogong/theme.dart';

// 비밀번호 찾기 화면

class SearchPassword extends StatelessWidget {
  const SearchPassword({Key? key}) : super(key: key);

  static String routeName = "/search_password";    // 라우트 이름을 search_password로 지정

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(                                  // 뒤로 가기 버튼 생성을 위한 앱바
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: kGreyColor),
          onPressed: () {                             // 클릭하면 로그인 화면으로 이동
            Navigator.push(context, MaterialPageRoute(
                builder: (context)=>LogInScreen()));
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
                "비밀번호 찾기", style: titleText),
            SizedBox(height: 25),
            Text(
              "가입 시 사용한 이메일 주소를 입력해 주세요.", style: subTitle
            ),
            SizedBox(height: 10),
            SearchPassForm(),       // 비밀번호 관련 구조
          ],
        ),
      ),
    );
  }
}

class SearchPassForm extends StatefulWidget {
  const SearchPassForm({Key? key}) : super(key: key);

  @override
  _SearchPassFormState createState() => _SearchPassFormState();
}

class _SearchPassFormState extends State<SearchPassForm> {

  final _formKey = GlobalKey<FormState>();   // 밑에 form key

  String? _email;    // email 입력 값
  
  @override
  Widget build(BuildContext context) {

    final issueButton = Material(                // 비밀번호 발급 버튼
      elevation: 5,
      color: kPrimaryColor,
      borderRadius: BorderRadius.circular(30),
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),  // 여백(로그인 버튼)
        minWidth: MediaQuery.of(context).size.width,   // 다음 버튼 크기
        onPressed: () {                                // 다음 버튼 누르면 작동(임시 비밀번호 발급)
          Navigator.push(context, MaterialPageRoute(
              builder: (context)=> TempPassword()));
        },
        child: Text("임시 비밀번호 발급", textAlign: TextAlign.center,
          style: textButton,    // theme.dart 파일
        ),
      ),
    );

    return Form(
      key: _formKey,

      child: Column(         // 열
        children: [

          // 이메일 필드
          TextFormField(

          keyboardType: TextInputType.emailAddress,      // 입력 타입: 이메일
          onSaved: (value) => _email = value,

          textInputAction: TextInputAction.done,
          cursorColor: kPrimaryColor,
          decoration: InputDecoration(             // 꾸미기
            contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
            hintText: "abc@email.com",   // 이메일 field 안 글자

            border: OutlineInputBorder(                   // 경계면(둥글게)
              borderRadius: BorderRadius.circular(8),
            ),
           )
          ),

          SizedBox(height: 30),

          // 임시 비밀번호 발급 버튼
          issueButton,
          SizedBox(height: 15),


       ],
      ),

    );
  }
}

