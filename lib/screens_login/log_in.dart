import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mogong/theme.dart';
import '../components/noAccount.dart';
import '../screens_home/home_bottom_navi.dart';
import 'registration.dart';


// log_in.dart 파일은 메인 로그인 화면(한 번에 작성)

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  static String routeName = "/log_in";            // 경로 안내를 위한 routeName 설정(/log_in) -> routeName을 통해 이동 가능

  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {           // 스플래시 스크린 후 가장 처음 나타나는 화면(로그인)

  
  final _formKey = GlobalKey <FormState>();    // 키(사용자)  -> 확인하기 위해(위젯)
  final TextEditingController emailController = new TextEditingController();           // 이메일 텍스트 편집 생성
  final TextEditingController passwordController = new TextEditingController();        // 암호 텍스트 편집 생성


  
  @override
  Widget build(BuildContext context) {

    // 이메일 field 부분

    final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,      // 입력 타입: 이메일

      onSaved: (value)    // 이메일 입력 -> 저장
      {
        emailController.text = value!;
      },

      textInputAction: TextInputAction.next,    // 다음 입력
      decoration: InputDecoration(             // 꾸미기
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),   // 필드 안 글자 여백
        hintText: "abc@email.com",   // 이메일field 글자(작성하기 전에 나타나 있는 문자)

        border: OutlineInputBorder(                    // 경계면(둥글게)
          borderRadius: BorderRadius.circular(8),
        ),
      )
    );


    // 암호 field 부분

    final passwordField = TextFormField (

      autofocus: false,
      controller: passwordController,
      obscureText: true,    // 암호 숨기기(*)
     
      onSaved: (value)    // 이메일 입력 -> 저장
      {
        passwordController.text = value!;
      },

      textInputAction: TextInputAction.done,   // 입력 완료


        decoration: InputDecoration(             // 꾸미기
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "8자 이상의 비밀번호",
          enabledBorder: OutlineInputBorder(                   // 경계면(둥글게)
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: kGreyColor),
            gapPadding: 10,
          ),
        )


    );

    final loginButton = Material(                // login 버튼
      elevation: 5,
      color: kPrimaryColor,
      borderRadius: BorderRadius.circular(30),
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),  // 여백(로그인 버튼)
        minWidth: MediaQuery.of(context).size.width,   // 로그인 버튼 크기
        onPressed: () {                                               // 로그인 버튼 누르면 작동(홈으로, home_screen)
            Navigator.push(
                context, MaterialPageRoute(builder: (context)=> HomeBottom()));               // 로그인 버튼을 클릭하면 home_bottom_navi(메인) 클래스로 이동
          },


        child: Text("로그인", textAlign: TextAlign.center,
        style: textButton,    // theme.dart 파일
        ),
      ),
    );
    
   return Scaffold(
     backgroundColor: Colors.white,       // 배경화면 색상
     body: Center(
       child: SingleChildScrollView(
         child: Container(             // 로고와 이메일 필드를 보관할 컨테이너
           color: Colors.white,
           child: Padding(
             padding: const EdgeInsets.all(36.0),    // 전체적인 여백(이메일, 비번, 로그인 버트)
             child: Form(
               key: _formKey,          // 키 값
               child: Column(         // 열(이메일 필드, 패스워드 필드)
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: <Widget>[

                   SizedBox(            // image 출력(모공 아이콘)
                       height: 80,
                       child: Image.asset(
                         "assets/images/mogongicon.png",
                         fit: BoxFit.contain,
                       ),
                   ),

                   SizedBox(height: 45),    // 이미지와 이메일, 비번 사이의 거리

                   Text("이메일", style: subTitle),   // field 위에 이름(이메일)
                   emailField,
                   SizedBox(height: 25),

                   Text("비밀번호", style: subTitle),  // field 위에 이름(비밀번호)
                   passwordField,
                   SizedBox(height: 45),

                   loginButton,
                   SizedBox(height: 15),

                   // 로그인 버튼 밑에 이메일 찾기, 비번 찾기
                   NoAccount(),

                   SizedBox(height: 35),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,

                     children: <Widget>[
                       Text("계정이 없으신가요?"),
                       GestureDetector(
                         onTap: () {                //가입하기를 클릭하면
                           Navigator.push(
                               context,
                               MaterialPageRoute(
                                   builder: (context)=> RegistrationScreen()));  // 회원가입으로 넘어가기

                       },
                       child: const Text(
                         "가입하기",
                         style: TextStyle(             // 가입하기 글씨 디자인
                            color: kPrimaryColor,
                             fontWeight: FontWeight.bold,
                             fontSize: 15),
                       ),
                       )
                     ],
                   )

                 ],

               ),
             ),
           ),            // 형식
         ),
       ),
     ),
   );
  }
}


