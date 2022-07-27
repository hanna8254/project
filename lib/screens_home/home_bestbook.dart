import 'package:flutter/material.dart';

import 'home_screen.dart';

// 메인 화면 (인기 공동구매 교재 리스트)

class BestBookList extends StatelessWidget {
  const BestBookList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      child: SingleChildScrollView(      // 책 리스트(인기 공동구매 교재)
        scrollDirection: Axis.horizontal,   // 수평으로 스크롤 가능
        // 나란히 정렬
        child:Row(
          children: List.generate(books.length, (index) => Padding(
            padding: EdgeInsets.only(
              bottom:23,  // 밑
              right: 8,   // 오
              left: index == 0 ? 5 : 0,   // 스크롤뷰
            ),
            child: Column(
              children: [
                Card(                                             // 책 하나하나를 나타내기 위한 묶음
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 0,

                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(1.0),
                    child: Image.asset(                                // 책 이미지 순서대로
                      books[index].image,
                      height: 130,
                      width: 120,
                      // fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  width: 120,
                  child: Text(
                    books[index].booktitle,                 // 제목(book_list.dart 참고)
                    textAlign: TextAlign.center,           // 가운데 표시
                  ),
                ),
              ],
            ),
          ),
          ),
        ),
      ),


    );
  }
}
