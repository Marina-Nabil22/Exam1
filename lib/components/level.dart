import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled6/screens/question.dart';
import 'package:untitled6/screens/home_page.dart';

class Level extends StatelessWidget {

final levelImage;
final levelNumber;

Level(this.levelImage, this.levelNumber);

  @override
  Widget build(BuildContext context) {
    return InkWell(
       child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(image:levelImage,fit: BoxFit.cover)
          ),
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center
            ,
            children: [
              Text("Level",  style: TextStyle(color: CupertinoColors.white,fontSize: 30,fontWeight:FontWeight.w900)),
              Text(levelNumber, style: TextStyle(color: CupertinoColors.white,fontSize: 30,fontWeight: FontWeight.w900),)
            ],

          ),

       ),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>  QuestionPage()
            ));
      },
    );
  }
}
