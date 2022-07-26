import 'package:flutter/material.dart';
import 'package:mogong/theme.dart';
import '../components/size_config.dart';


 //메인 홈 페이지 (booklist)

class HomeScreen extends StatelessWidget {

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(

      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          Padding(
              padding: kDefaultPadding,

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text(
                "인기 공동구매 교재",
                style: TextStyle(
                  color:kPrimaryColor,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add),
                )
              ],
            ),
          ),

        ],
      ),








    );
  }

}
