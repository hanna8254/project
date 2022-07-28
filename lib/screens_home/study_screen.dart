import 'package:flutter/material.dart';
import 'package:mogong/screens_home/study_view.dart';

import '../components/info.dart';

class StudyScreen extends StatelessWidget {
  const StudyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 10),
        color: const Color.fromARGB(255, 239, 239, 239),
        child: ListView.builder(
            itemCount: posts.length,
            itemBuilder: (context, i) => SizedBox(
              height: 140,
              child: Card(
                  shadowColor: Colors.transparent,
                  elevation: 6,
                  margin: const EdgeInsets.fromLTRB(0, 4, 0, 4),
                  child: ListTile(
                    onTap: () async{
                      final post = posts[i];
                      final result = await Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context)=>StudyView(post: post)
                          )
                      );
                    },
                    title: Padding(
                      padding: const EdgeInsets.fromLTRB(11, 15, 0, 0),
                      child: Text(
                        posts[i].title,
                        style:
                        const TextStyle(fontWeight: FontWeight.w800),
                      ),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.fromLTRB(11, 53, 0, 0),
                      child: Text(
                        posts[i].contents,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    trailing: Text(
                      '모집인원 ${posts[i].currentmember}/${posts[i].totalmember}',
                      style: const TextStyle(
                        fontSize: 10,),
                    ),
                  )),
            )
        )
    )
    ;
  }
}

