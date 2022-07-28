import 'package:flutter/material.dart';

import '../components/info.dart';


class StudyView extends StatelessWidget {
  const StudyView({Key? key, required this.post}) : super(key: key);
  final StudyPost post;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
          title: const Positioned(
            left: 10,
            top : 10,
            child: Text(
              '스터디',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 16),
            ),
          )),
      body: Container(
        padding: EdgeInsets.fromLTRB(45, 30, 45, 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(post.title,
                  style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w800
                  ),),
                const Spacer(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('모집인원 ${post.currentmember}/${post.totalmember}'
                      ,style: const TextStyle(
                          fontSize: 11,
                          color: Color.fromRGBO(84, 41, 255, 1)
                      ),),
                  ],
                )
              ],
            ),
            const SizedBox(height : 20),
            Text(post.contents,
              style: const TextStyle(
                  fontSize: 13,
                  height: 1.8
              ),),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const[
                Text('18분전'
                  ,style: TextStyle(
                      fontSize: 11,
                      color: Color.fromRGBO(84, 41, 255, 1)
                  ),),
              ],
            ),
            const SizedBox(height: 5),
            const Divider(
                thickness: 2,
                color : Color.fromARGB(255, 212, 206, 206)
            ),


          ],
        ),
      ),
    );
  }
}