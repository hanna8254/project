import 'package:flutter/material.dart';

import '../theme.dart';
import 'home_bottom_navi.dart';

// 교재 검색(홈) 화면 -> 만들고 복사

class SearchBook extends StatelessWidget {
  const SearchBook({Key? key}) : super(key: key);

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
                builder: (context)=> HomeBottom()));
          },
        ),
      ),


    );
  }
}

