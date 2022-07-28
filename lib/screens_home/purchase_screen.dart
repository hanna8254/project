import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mogong/theme.dart';


// 공동구매 교재 리스트

class PurchaseScreen extends StatefulWidget {
  const PurchaseScreen({Key? key}) : super(key: key);

  @override
  _PurchaseScreenState createState() => _PurchaseScreenState();
}

class _PurchaseScreenState extends State<PurchaseScreen> {
  @override
  Widget build(BuildContext context) {

    

    // 교재 이름 list
    var bookNameList = [
      "사고와 표현",
      "사고와 표현",
      "사고와 표현",
      "사고와 표현",
      "대학 글쓰기",
      "사고와 표현",
      "국어교육의 이해",
      "사고와 표현",
      "대학 글쓰기"
    ];

    // 이미지 list
    var imgList = [

      "assets/images/사고와 표현1.png",
      "assets/images/사고와 표현4.png",
      "assets/images/사고와 표현1.png",
      "assets/images/사고와 표현2.png",
      "assets/images/대학 글쓰기.png",
      "assets/images/사고와 표현3.png",
      "assets/images/국어교육의 이해.png",
      "assets/images/사고와 표현2.png",
      "assets/images/대학 글쓰기.png"
    ];

    // 교재 위원회 위 list
    var commitListT = [

      "상명대학교",
      "경기대학교",
      "상명대학교",
      "상명대학교",
      "상명대학교",
      "상명대학교",
      "상명대학교",
      "상명대학교",
      "상명대학교",

    ];

    // 교재 위원회 아래 list
    var commitListB = [

      "사고와 표현 편찬 위원회",
      "교재 편찬 위원회",
      "사고와 표현 편찬 위원회",
      "사고와 표현 편찬 위원회",
      "대학 글쓰기 편찬 위원회",
      "사고와 표현 편찬 위원회",
      "국어교육 편찬 위원회",
      "사고와 표현 편찬 위원회",
      "대학 글쓰기 편찬 위원회",

    ];



    // 출판사 list
    var publisher = [

      "역락",
      "휴먼싸이언스",
      "역락",
      "한국문화사",
      "북코리아",
      "사회평론",
      "사회평론",
      "한국문화사",
      "북코리아"
    ];

    // 가격 list
    var Price = [
      "15000원",
      "18000원",
      "13000원",
      "14000원",
      "15000원",
      "12000원",
      "15000원",
      "14000원",
      "15000원"
    ];

    var People = [

      "2/6",
      "3/4",
      "2/8",
      "1/4",
      "2/6",
      "2/6",
      "3/4",
      "2/8",
      "1/4",
    ];




    // 정렬기준을 나타내기 위해서 appbar, appbar 사이 여백 줄이기, 글자 오른쪽, 이모티콘 넣기, 누르면, 정렬방법 선택가능
    return Scaffold(
      appBar:AppBar(
        title: Text(
          "여기다 낮은 가격순 만들기",
          style: TextStyle(color:  kPrimaryColor, fontSize: 12),
        ),
        elevation: 1,  // 일단 나중에 만들기 위해 -> 1로 설정
        backgroundColor: Colors.white,
      ),

      body: ListView.builder(



          itemCount: imgList.length,  // 이미지 list 길이만큼(9)
          itemBuilder: (context, index)   // 이미지 인덱스 이용해서 빌드

          {


            
            return GestureDetector(          // Tap 하면 나오는 장면
              onTap: () {
                showDialogFunc(context,
                    imgList[index], bookNameList[index]);
              },


              child: Card(
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 130,
                      height: 170,
                      padding: EdgeInsets.fromLTRB(10, 10, 0, 0),   // 이미지와 끝 사이 거리 조절
                      child: Image.asset(imgList[index], width: 500, fit: BoxFit.fill),  // 이미지 크기 조절
                    ),


                    Padding(

                      padding: const EdgeInsets.fromLTRB(5, 25, 0, 30),  // 이미지와 글자 사이의 거리
                      child: Column(    // 열
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[


                          Row(

                            children: [
                              Text(                                    // bookname(교재 이름)
                                bookNameList[index],
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),

                              IconButton(

                                  icon: Icon(Icons.favorite_border),
                                  color: Colors.red,
                                  onPressed: () {
                                    setState(() {
                                    });
                                  }
                              ),
                            ],
                          ),

                          SizedBox(height: 8),

                          Container(
                            width: MediaQuery.of(context).size.width * 0.6,
                            child: Text(
                              commitListT[index],                                 // 대학교
                              style: TextStyle(
                                fontSize: 12,
                                color: kGreyColor,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),

                          Container(
                            width: MediaQuery.of(context).size.width * 0.6, 
                            child: Text(
                              commitListB[index],                                 // 위원회
                              style: TextStyle( 
                                fontSize: 12,
                                color: kGreyColor,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),

                          SizedBox(height: 8),

                          Container(
                            width: MediaQuery.of(context).size.width * 0.6,
                            child: Text(
                              publisher[index],                                //출판사
                              style: TextStyle(
                                fontSize: 12,
                                color: kGreyColor,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),

                          SizedBox(height: 15),

                          Container(
                            width: MediaQuery.of(context).size.width * 0.6,
                            child: Row(
                              children: [
                                Text(
                                  Price[index],                               // 가격
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: kPrimaryColor,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),

                                SizedBox(width: 160),

                                Text(
                                  People[index],                              // 인원 수
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: kGreyColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),

                              ],
                            ),
                          ),

                        ],
                      ),

                    )
                  ],
                )
              ),

            );
        }
      )
    );
  }

  showDialogFunc(context, img, name) {
    return showDialog(
        context: context,
        builder: (context) {
          return Center(
            child: Material(
              type: MaterialType.transparency,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey,
                ),
                padding: EdgeInsets.all(15),
                width: MediaQuery
                    .of(context)
                    .size
                    .width * 0.7,
                height: 320,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        img,
                        width: 200,
                        height: 200,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                        name,
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold
                        )
                    ),
                    SizedBox(height: 10,),

                  ],
                ),
              ),
            ),

          );
        }
    );
  }
}
