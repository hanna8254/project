import 'package:flutter/material.dart';


//theme.dart 파일은 앱 전체에서 특정한 색상이나 글꼴을 통일, const 모음

const kPrimaryColor = Color(0xFF5429FF);    // 메인 색깔(보라)
const kWhiteColor = Color(0xFFFFFFFF);      // 흰색(로그인 글씨)
const kGreyColor = Color(0xFF4E4E4E);       // 글씨 색상(그레이)
const kTextFieldColor = Color(0xFFE0E0E0);  // 로그인 텍스트 필드 안 글씨 색상(hint)
const kFieldColor = Color(0xFFE0E0E0);      // 필드 바깥 선
const kkGreyColor = Color(0xFF9D9D9D);      // 안내(이메일 계정, 임시 비밀번호)



const kDefaultPadding = EdgeInsets.symmetric(horizontal: 30);   // 기본 여백 값 지정

const kAnimationDuration = Duration(milliseconds: 200);      // 애니메이션 효과 (0.2초)

TextStyle titleText =
    TextStyle(color: kGreyColor, fontSize: 24, fontWeight: FontWeight.w900); // 제목(이메일 찾기, 비밀번호 찾기)

TextStyle subTitle =
    TextStyle(color: kGreyColor, fontSize: 13, fontWeight: FontWeight.w700); // textfield 위에 있는 글자들(이메일, 비밀번호 등 서브 타이틀)

TextStyle textButton =
    TextStyle(color: kWhiteColor, fontSize: 16, fontWeight: FontWeight.w700); // textbutton 에 있는 글자(로그인, 인증받기)

TextStyle grade =
TextStyle(color: kPrimaryColor, fontSize: 17, fontWeight: FontWeight.bold); // 인기 스터디에서 순위를 나타내는 글자 스타일

TextStyle studyname =
TextStyle(color: kGreyColor, fontSize: 17, fontWeight: FontWeight.bold); // 인기 스터디에서 스터디 이름을 나타내는 글자 스타일

TextStyle fieldtext =
TextStyle(color: kFieldColor, fontSize: 16, fontWeight: FontWeight.bold);

TextStyle smalltextButton =
TextStyle(color: kWhiteColor, fontSize: 13, fontWeight: FontWeight.w700);  // 인증받기, 재발송

TextStyle destext =
TextStyle(color: kkGreyColor, fontSize: 13, fontWeight: FontWeight.w700);  // 안내(이메일, 비번)

TextStyle emailtext =
TextStyle(color: kGreyColor, fontSize: 18, fontWeight: FontWeight.w700);   // 이메일 계정, 비번

