import 'package:flutter/material.dart';
import 'package:mogong/screens_home/purchase_screen.dart';
import 'package:mogong/screens_home/search_book.dart';
import 'package:mogong/screens_home/study_screen.dart';
import '../components/info.dart';
import '../theme.dart';
import 'community_screen.dart';
import 'home_screen.dart';

// 메인 페이지에서 네비게이션 바(메뉴 이동), 앱바 설정(로그인 후), drawer 설정

class HomeBottom extends StatefulWidget {     // 홈(메인)
  const HomeBottom({Key? key}) : super(key: key);


  @override
  _HomeBottomState createState() => _HomeBottomState();
}

class _HomeBottomState extends State<HomeBottom> {

  int _currentIndex = 0;   // 메뉴이동을 위한 인덱스 지정

  static const List<Widget> _widgetOptions = <Widget> [

    HomeScreen(),          // 보여줄 첫 화면
    PurchaseScreen(),
    StudyScreen(),
    CommunityScreen(),

  ];

  int index = 0;
  MyAccount account = MyAccount("김형진", "rlagudwls3469@gmail.com", "qwe123");
  final screens = [
    const Center(child : Text("home",style: TextStyle(fontSize: 72),)),
    const Center(child : Text("buy", style: TextStyle(fontSize: 72),)),
    const StudyScreen(),
    const Center(child : Text("commu", style: TextStyle(fontSize: 72),)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,                    // 타이틀 가운데 설정
        backgroundColor: Colors.white,
        toolbarHeight: 87, // 앱바 크기
        elevation: 1,

        leading: SizedBox(              // 메인 앱바에서 모공 이미지(왼쪽)
          child: Image.asset("assets/images/mogong_main.png"),
        ),
        leadingWidth: 110,

        titleSpacing: 5,

        title: SizedBox(                  // 메인 검색바(가운데)
          width: 330,
          height: 35,


          child: MaterialButton(
            padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
            minWidth: MediaQuery.of(context).size.width,
            color: kPrimaryColor,
            onPressed: () {                                // 다음 버튼 누르면 작동(임시 비밀번호 발급)
              Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> SearchBook()));
            },
            child: Text("구매할 책을 검색하세요",
              textAlign: TextAlign.left,
              style: textButton, // theme.dart 파일
            ),

          ),
        ),

        actions: [                                            // 오른쪽 메뉴(햄버거바)
          Builder(
              builder: (context) {
                return IconButton(
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();                // endDrawer을 사용해서 누르면 오른쪽으로 열리게 설정
                  },
                  icon: Icon(
                    Icons.menu,
                    color: kGreyColor,
                  ),
                );
              }
          ),
        ],

      ),

      // 위에 설정한 화면 나오게 하기(바디)
      body: Center(
        child: _widgetOptions.elementAt(_currentIndex),
      ),




      endDrawer: Drawer(
          child: Container(
            color: Colors.white,
            child: ListView(
              children: [
                SizedBox(
                  height: 260,
                  child: DrawerHeader(
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: Divider.createBorderSide(context,
                                color: Colors.white))),
                    child: Column(children: [
                      const SizedBox(
                        height: 50,
                        width: 20,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20, bottom: 20),
                        child: Image.asset(
                          'assets/account_default.png',
                          width: 60,
                          height: 60,
                        ),
                      ),
                      Text(
                        account.name,
                        style: TextStyle(fontSize: 18),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 15),
                        child: Text(account.email,
                            style: const TextStyle(
                                fontSize: 15,
                                fontFamily: 'sans',
                                fontWeight: FontWeight.w100)),
                      )
                    ]),
                  ),
                ),
                Container(
                  // color : Color.fromARGB(255, 246, 238, 238),
                  color: Color.fromARGB(255, 234, 234, 234),
                  child: SizedBox(
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                            splashColor: Colors.blue,
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/heart.png',
                                    width: 24,
                                    height: 24,
                                  ),
                                  const Text(
                                    "찜목록",
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                            onTap: () => {print("찜 목록 클릭")}),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/zzim.png',
                              width: 24,
                              height: 24,
                            ),
                            const Text("공감", style: TextStyle(fontSize: 10)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),



      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,   // 선택 시 아이콘 고정
        selectedItemColor: kPrimaryColor,    // 선택되면 보라색
        unselectedItemColor: Colors.black,   // 안 선택되면 검은색

        currentIndex: _currentIndex,      // 현재 위치 -> 선택된 위치(인덱스)

        onTap: _onItemTapped,

        // 메뉴(홈, 공동구매, 스터디, 커뮤니티)
        items: const <BottomNavigationBarItem>
        [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "홈"),
          BottomNavigationBarItem(icon: Icon(Icons.credit_card), label: "공동구매"),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: "스터디"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "커뮤니티"),
        ],

      ),




    );
  }
}