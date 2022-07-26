import 'package:flutter/material.dart';
import 'package:mogong/screens_login/registration.dart';
import '../theme.dart';
import 'input_registration.dart';
import 'log_in.dart';


// 회원가입 등룍 화면(이메일, 비밀번호)

class InputRegistration extends StatefulWidget {       // 등록(회원가입)
  const InputRegistration({Key? key}) : super(key: key);

  @override
  _InputRegistrationState createState() => _InputRegistrationState();
}

class _InputRegistrationState extends State<InputRegistration> {


  @override
  Widget build(BuildContext context) {



    return Scaffold(
      backgroundColor: Colors.white,       // 배경화면 색상
      appBar: AppBar(                                  // 뒤로 가기 버튼 생성을 위한 앱바
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: kGreyColor),
          onPressed: () {                             // 클릭하면 회원가입 첫번째 화면으로 이동
            Navigator.push(context, MaterialPageRoute(
                builder: (context)=> RegistrationScreen()));
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
                "이메일과 비밀번호를", style: titleText),
            Text(
                "입력해주세요.", style: titleText
            ),
            SizedBox(height: 10),
            InputForm(),       // 회원가입 등록 관련 구조(바디)
          ],
        ),
      ),
    );
  }
}

// 회원가입 화면(바디)

class InputForm extends StatefulWidget {
  const InputForm({Key? key}) : super(key: key);

  @override
  _InputFormState createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {

  final _formKey = GlobalKey<FormState>();

  String? _email, _password;    // 이메일, 비밀번호


  @override
  Widget build(BuildContext context) {

    // 이메일 부분

    final emailField = TextFormField(


        keyboardType: TextInputType.emailAddress,      // 입력 타입: 전화번호
        onSaved: (value) => _email = value,
        textInputAction: TextInputAction.next,     // 다음 입력
        decoration: InputDecoration(             // 꾸미기
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),    // 입력칸 여백
          hintText: "abc@email.com",
          border: OutlineInputBorder(                   // 경계면(둥글게)
            borderRadius: BorderRadius.circular(8),
          ),
        )
    );


    // 비밀번호 부분

    final passwordField = TextFormField(


        keyboardType: TextInputType.number,      // 입력 타입: 비밀번호
        obscureText: true,    // 비밀번호 숨기기
        onSaved: (value) => _password = value,


        textInputAction: TextInputAction.done,     // 입력 완료
        decoration: InputDecoration(             // 꾸미기
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "8자 이상의 비밀번호",
          border: OutlineInputBorder(                   // 경계면(둥글게)
            borderRadius: BorderRadius.circular(8),
            gapPadding: 10,       // 이거는 나중에 확인해보기(다시)
          ),
        )
    );


    // 회원가입(완료) 버튼

    final finishedButton = Material(                // 완료 버튼
      elevation: 5,
      color: kPrimaryColor,
      borderRadius: BorderRadius.circular(30),
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),  // 여백(로그인 버튼)
        minWidth: MediaQuery.of(context).size.width,   // 다음 버튼 크기
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
              builder: (context)=> LogInScreen()));
        },       // 완료 버튼 누르면 작동(메인 로그인으로 이동)

        child: Text("완료", textAlign: TextAlign.center,
          style: textButton,    // theme.dart 파일
        ),
      ),
    );


    return Form(
      key: _formKey,

      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),   // body 부분 위치 조절
        child: Column(
          children: [
            SizedBox(height: 30),

            Text("이메일", style: subTitle),
            emailField,
            SizedBox(height: 20),


            Text("비밀번호", style: subTitle),
            passwordField,
            SizedBox(height: 30),

            // 완료 버튼(작성 후 완료 버튼 클릭 시 로그인 창으로 이동)
            finishedButton,
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}


