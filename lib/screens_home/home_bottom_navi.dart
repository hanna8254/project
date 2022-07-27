import 'package:flutter/material.dart';
import 'package:mogong/screens_home/purchase_screen.dart';
import 'package:mogong/screens_home/study_screen.dart';
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


          child: TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: Colors.white,
                size: 23,
              ),

              hintText: "구매할 책을 검색하세요",
              contentPadding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              hintStyle: textButton,
              isDense: true,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              filled: true,
              fillColor: kPrimaryColor,   // 보라색
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

      
      
      
      endDrawer: Drawer(                   // drawer 화면(일단 기본 구성) -> 수정하기
        child: ListView( // 리스트뷰에는 패딩 값 0

          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: const Color(0xff764abc)),
              accountName: Text( // 계정 이름
                "mogong 연습",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text( // 이메일 계정
                "mogong.practice@gmail.com",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              currentAccountPicture: FlutterLogo(),
            ),

            ListTile(
              leading: Icon( // leading은 왼쪽으로 아이콘
                Icons.home,
              ),
              title: const Text("Page 1"),
              onTap: () {
                Navigator.pop(context); // 이전 화면으로
              },
            ),
            ListTile(
              leading: Icon(
                Icons.train,
              ),
              title: const Text("Page 2"),
              onTap: () {
                Navigator.pop(context); // 이전 화면으로
              },
            ),
          ],
        ),
      ),



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