class BookList {
  String image; // 그림 이미지
  String booktitle; // 제목
  bool favorite; // 베스트 순(찜)

  BookList({
    required this.image,
    required this.booktitle,
    required this.favorite,
  });

  static List<BookList> newbooks = [                                       // 최근 공동구매 리스트

    // 총 4권
    // 첫 번째 책
    BookList(
      image: "assets/images/국어교육의 이해.png",
      booktitle: "국어교육의 이해",
      favorite: false,
    ),

    // 2
    BookList(
      image: "assets/images/사고와 표현2.png",
      booktitle: "사고와 표현",
      favorite: false,
    ),

    // 3
    BookList(
      image: "assets/images/대학 글쓰기.png",
      booktitle: "대학 글쓰기",
      favorite: false,
    ),

    // 4(스크롤 바 -> 추가)
    BookList(
      image: "assets/images/사고와 표현1.png",
      booktitle: "사고와 표현",
      favorite: false,
    ),

  ];


  static List<BookList> books = [                             // 인기 공동구매 교재 리스트

    // 총 4권
    // 첫 번째 책
    BookList(
      image: "assets/images/사고와 표현1.png",
      booktitle: "사고와 표현",
      favorite: false,
    ),

    // 2
    BookList(
      image: "assets/images/사고와 표현3.png",
      booktitle: "사고와 표현",
      favorite: false,
    ),

    // 3
    BookList(
      image: "assets/images/사고와 표현4.png",
      booktitle: "사고와 표현",
      favorite: false,
    ),

    // 4(스크롤 바 -> 추가)
    BookList(
      image: "assets/images/대학 글쓰기.png",
      booktitle: "대학 글쓰기",
      favorite: false,
    ),

  ];

}



