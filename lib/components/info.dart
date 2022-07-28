class StudyPost {
  int index;
  int posttime;
  String posterid;
  String title;
  String contents;
  int totalmember;
  int currentmember;

  StudyPost(this.index, this.posttime, this.posterid, this.title, this.contents,
      this.totalmember, this.currentmember);
}

class Post{
  int index;
  int posttime;
  String posterid;
  String title;
  String contents;
  int like;
  Post(this.index, this.posttime, this.posterid, this.title, this.contents,this.like);
}

class MyAccount {
  String name;
  String email;
  String pw;
  MyAccount(this.name, this.email, this.pw);
}

var posts = [
  StudyPost(0, 3, '김형진', 'Flutter 공부', 'Flutter 스터디 모집합니다! 많이 지원해주세요', 8, 1),
  StudyPost(1, 5, '김형진', 'Kotlin 스터디',
      '안녕하세요.\n상명대학교 학생들이 모여만든'
          '\n모각코 스터디원을 모집합니다'
          '\n\n회의 시간은 스터디원이 모두 모이면'
          '\n조정될 예정이며, 현재 수요일 9시에'
          '\n모이고 있습니다.'
          '\n\n전공 무관하게 지원받고 있으니'
          '\n많은 관심 부탁드립니다.'
      , 8, 1),
  StudyPost(2, 7, '김형진', '제목3', '내용1', 8, 3),
  StudyPost(3, 8, '김형진', '제목4', '내용1', 8, 4),
  StudyPost(4, 17, '김형진', '제목5', '내용1', 8, 0),
  StudyPost(5, 29, '김형진', '제목6', '내용1', 8, 0),
  StudyPost(6, 34, '김형진', '제목7', '내용1', 8, 0),
  StudyPost(7, 44, '김형진', '제목8', '내용1', 8, 0),
  StudyPost(8, 59, '김형진', '제목9', '내용1', 8, 0),
];
