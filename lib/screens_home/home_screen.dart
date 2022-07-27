import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mogong/components/book_list.dart';
import 'package:mogong/theme.dart';
import 'home_bestbook.dart';
import 'home_beststudy.dart';
import 'home_recentbook.dart';

final List<BookList> books = BookList.books;           //book_list.dart 참고

//메인 홈 페이지 (booklist)

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Scrollbar(
      thickness: 8,      // 스크롤바 두께
      thumbVisibility: true,    // 스크롤바 항상 보이게 설정
      radius: Radius.circular(20.0),   // 스크롤바 둥글게

      child: SingleChildScrollView(

        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text(
                  "인기 공동구매 교재",                              // 책 위에 타이틀
                  style: TextStyle(
                    color:kPrimaryColor,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                  IconButton(                                         // + 버튼, 시간되면 onTap까지 구현하기
                    onPressed: () {},
                    icon: Icon(Icons.add),
                    iconSize: 25,
                    padding: EdgeInsets.fromLTRB(150, 7, 0, 0),
                  )
                ],
              ),
            ),

            BestBookList(),                            // 인기 공동구매 교재 리스트(home_bestbook.dart)



            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text(
                  "최근 공동구매 업로드",
                  style: TextStyle(
                    color:kPrimaryColor,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                  IconButton(                                         // + 버튼
                    onPressed: () {},
                    icon: Icon(Icons.add),
                    iconSize: 25,
                    padding: EdgeInsets.fromLTRB(150, 7, 0, 0),
                  )
                ],
              ),
            ),

            RecentBookList(),                        // 최신 공동구매 교재 리스트(home_recentbook.dart)

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 3),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text(
                  "인기 스터디",
                  style: TextStyle(
                    color:kPrimaryColor,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ],
              ),
            ),

            StudyGrade(),              // 메인 밑에 인기 스터디 순위(home_beststudy.dart)
          ],
        ),

      ),
    );
  }

}