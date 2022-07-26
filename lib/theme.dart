import 'package:flutter/material.dart';


//theme.dart 파일은 앱 전체에서 특정한 색상이나 글꼴을 통일, const 모음

const kPrimaryColor = Color(0xFF5429FF);    // 메인 색깔(보라)
const kWhiteColor = Color(0xFFFFFFFF);      // 흰색(로그인 글씨)
const kGreyColor = Color(0xFF4E4E4E);       // 글씨 색상(그레이)
const kTextFieldColor = Color(0xFFE0E0E0);  // 로그인 텍스트 필드 안 글씨 색상(hint)

const kDefaultPadding = EdgeInsets.symmetric(horizontal: 30);   // 기본 여백 값 지정

const kAnimationDuration = Duration(milliseconds: 200);      // 애니메이션 효과 (0.2초)

TextStyle titleText =
    TextStyle(color: kGreyColor, fontSize: 24, fontWeight: FontWeight.w900); // 제목(이메일 찾기, 비밀번호 찾기)

TextStyle subTitle =
    TextStyle(color: kGreyColor, fontSize: 13, fontWeight: FontWeight.w700); // textfield 위에 있는 글자들(이메일, 비밀번호 등 서브 타이틀)

TextStyle textButton =
    TextStyle(color: kWhiteColor, fontSize: 14, fontWeight: FontWeight.w700); // textbutton 에 있는 글자(로그인, 인증받기)


