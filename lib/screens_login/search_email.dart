import 'package:flutter/material.dart';
import '../theme.dart';
import 'account_email.dart';
import 'log_in.dart';


// 이메일 찾기 화면

class SearchEmail extends StatefulWidget {       // 이메일 찾기
  const SearchEmail({Key? key}) : super(key: key);

  static String routeName = "/search_email";      // 라우트 설정

  @override
  _SearchEmailState createState() => _SearchEmailState();
}

class _SearchEmailState extends State<SearchEmail> {


  @override
  Widget build(BuildContext context) {



    return Scaffold(
      backgroundColor: Colors.white,       // 배경화면 색상
      appBar: AppBar(                                  // 뒤로 가기 버튼 생성을 위한 앱바
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: kGreyColor),
          onPressed: () {                             // 클릭하면 로그인 화면으로 이동
            Navigator.push(context, MaterialPageRoute(
                builder: (context)=> LogInScreen()));
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
                "이메일 찾기", style: titleText),

            SizedBox(height: 10),
            SearchEmailForm(),       // 이메일 찾기 관련 구조(바디)
          ],
        ),
      ),
    );
  }
}

// 이메일 찾기 화면(바디)

class SearchEmailForm extends StatefulWidget {
  const SearchEmailForm({Key? key}) : super(key: key);

  @override
  _SearchEmailFormState createState() => _SearchEmailFormState();
}

class _SearchEmailFormState extends State<SearchEmailForm> {

  final _formKey = GlobalKey<FormState>();
  Color buttonColor = kPrimaryColor;   // 인증받기 버튼 (버튼 원래 색상)
  String buttonText = "인증받기";       // 인증받기 버튼 (버튼 원래 텍스트)

  String? _phoneNumber, _authNumber;    // 휴대폰 번호, 인증번호


  @override
  Widget build(BuildContext context) {

    // 휴대번호 부분

    final phoneNumberField = TextFormField(


        keyboardType: TextInputType.phone,      // 입력 타입: 전화번호
        onSaved: (value) => _phoneNumber = value,
        textInputAction: TextInputAction.next,     // 다음 입력
        decoration: InputDecoration(             // 꾸미기
          contentPadding: EdgeInsets.fromLTRB(15, 15, 10, 15),    // 입력칸 여백
          hintText: "01012345678",
          border: OutlineInputBorder(                   // 경계면(둥글게)
            borderRadius: BorderRadius.circular(8),
          ),
        )
    );


    // 인증번호 부분

    final authNumberField = TextFormField(


        keyboardType: TextInputType.number,      // 입력 타입: 인증번호
        obscureText: true,    // 인증번호 숨기기
        onSaved: (value) => _authNumber = value,


        textInputAction: TextInputAction.done,     // 입력 완료
        decoration: InputDecoration(             // 꾸미기
          contentPadding: EdgeInsets.fromLTRB(25, 15, 25, 15),
          hintText: "인증번호 4자리",
          border: OutlineInputBorder(                   // 경계면(둥글게)
            borderRadius: BorderRadius.circular(8),
          ),
        )
    );


    // 인증하기(이메일 찾기) 버튼, 맨 아래

    final authButton = Material(                // 인증하기 버튼
      elevation: 5,
      color: kPrimaryColor,
      borderRadius: BorderRadius.circular(30),
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),  // 여백(로그인 버튼)
        minWidth: MediaQuery.of(context).size.width,   // 다음 버튼 크기
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
              builder: (context)=> AccountEmail()));
        },       // 다음 버튼 누르면 작동(이메일 계정 정보 보여주기)

        child: Text("인증하기", textAlign: TextAlign.center,
          style: textButton,    // theme.dart 파일
        ),
      ),
    );

    // 인증받기 버튼(작은 버튼)

    final get_authButton = Material(                // 인증받기 버튼(회원가입 페이지)
      elevation: 5,
      color: buttonColor,
      borderRadius: BorderRadius.circular(30),
      child: MaterialButton(
        minWidth: 0,
        padding: EdgeInsets.fromLTRB(15, 12, 14, 10),  // 여백(인증받기 버튼)
        onPressed: () {                                // 인증받기 버튼 누르면 작동(회색으로 변하고, '재발송'으로 변함)
          setState(() {
            buttonColor = Colors.grey;
            buttonText = "재발송";
          });
        },

        child: Text(buttonText, textAlign: TextAlign.center,
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
            Text("휴대폰 번호", style: subTitle),

            Row(                                               // 휴대폰 필드와 인증받기 버튼 나란히
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  width: 260,
                  child: phoneNumberField,
                ),

                SizedBox(width: 10),

                Flexible(                                        // 버튼크기
                  fit: FlexFit.loose,
                  child: Container(
                    child:get_authButton,
                    width: 200,
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),
            Text("인증번호", style: subTitle),
            authNumberField,
            SizedBox(height: 30),

            // 인증하기 버튼 -> 이메일 계정 정보 보여줌
            authButton,
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}


