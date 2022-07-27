import 'package:flutter/material.dart';
import 'package:mogong/theme.dart';


// 메인 화면 (인기 스터디 순위)

class StudyGrade extends StatelessWidget {
  const StudyGrade({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      child: SingleChildScrollView(

        child: Padding(

          padding: const EdgeInsets.fromLTRB(25, 20, 0, 20),        // 인기스터디(타이틀)과 순위 사이의 거리
          child: Column(                               // 순위

            children: [
              Row(                                                         // 1위
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [

                  Text("1위",
                  style: grade
                  ),

                  SizedBox(width: 25),

                  Text("같이 코딩해요",
                    style: studyname
                  ),
                ],
              ),

              SizedBox(height: 15),   // 순위마다 각각 거리

              Row(                                                   // 2위
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [

                  Text("2위",
                      style: grade
                  ),

                  SizedBox(width: 25),

                  Text("C4D 영상 스터디 4tion",
                     style: studyname
                  ),
                ],
              ),

              SizedBox(height: 15),


              Row(                                                   // 3위
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [


                  Text("3위",
                      style: grade
                  ),

                  SizedBox(width: 25),

                  Text("모각코",
                      style: studyname
                  ),
                ],
              ),

              SizedBox(height: 15),
                                                                    // 4위
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [


                  Text("4위",
                      style: grade
                  ),

                  SizedBox(width: 25),

                  Text("제일페 공모전 뿌셔",
                      style: studyname
                  ),
                ],
              ),

              SizedBox(height: 15),

              Row(                                               // 5위
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [


                  Text("5위",
                      style: grade
                  ),

                  SizedBox(width: 25),

                  Text("함께 자바",
                      style: studyname
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

    );
  }
}
