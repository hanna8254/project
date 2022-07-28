import 'package:flutter/material.dart';

class PostPage extends StatelessWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false ,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: Colors.white,
      appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
          title: Container(
            padding: const EdgeInsets.only(left: 110),
            child: const Text('글 쓰기',style: TextStyle(
                color : Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 15)
              ,),
          )),
      body: Column(
        children:[
          Container(
            padding: const EdgeInsets.fromLTRB(30, 30, 30, 5),
            child: const TextField(
              style: TextStyle(color: Colors.black, fontSize: 17),
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  hintText: '제목을 입력하세요',
                  hintStyle: TextStyle(color: Colors.grey,)
              ),
            ),
          ),
          Container(
            padding : const EdgeInsets.fromLTRB(30, 0, 30, 5),
            child: Column(
              children: [
                const SizedBox(
                  height : 200,
                  child: TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    maxLength: 300,
                    style: TextStyle(
                        color : Colors.black,
                        fontSize : 15),
                    decoration: InputDecoration(
                        hintText: '스터디를 소개해주세요',
                        border: InputBorder.none,
                        hintStyle: TextStyle(color : Colors.grey)
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text("최대 인원을 입력하세요",style: TextStyle(fontSize: 13),),
                      SizedBox(
                          width : 10
                      ),
                      SizedBox(
                        width: 60,
                        child: TextField(
                          keyboardType: TextInputType.numberWithOptions(),
                          style: TextStyle(color: Colors.black, fontSize: 15),
                          decoration: InputDecoration(hintText: '0'),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Text("명")
                    ],
                  ),
                ),


              ],
            ),
          ),
        ],),
      floatingActionButton: SizedBox(
        width : 600,
        height : 40,
        child: FittedBox(
          child: FloatingActionButton.extended(
            backgroundColor: Color.fromRGBO(84, 41, 255, 1),
            onPressed: () {
              Navigator.pop(context);
            }, label: Text(
            '                              '+
                '완료'+
                '                              ',
            style: TextStyle(fontSize : 15),),),
        ),
      ),);
  }
}
