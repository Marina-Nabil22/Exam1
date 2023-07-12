import 'package:flutter/material.dart';
import 'package:untitled6/components/level.dart';

class LevelsScreen extends StatelessWidget {
  const LevelsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(iconTheme: IconThemeData.fallback(),
      ),
      body:Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/istockphoto-865577704-170667a.webp'),fit: BoxFit.cover)
        ),
        child:GridView(

          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 45,
            mainAxisSpacing: 35,

          ),
          scrollDirection: Axis.vertical,
          children: [
            Level(AssetImage('assets/images/2f52d9de-2e3a-4f61-a57c-86a813d5ab61.png'), '01', ),
            Level(AssetImage('assets/images/a8c7dd4b-6d80-42cc-9fbc-e32c77a29c27.png'), '02', )
,
            Level(AssetImage('assets/images/a8c7dd4b-6d80-42cc-9fbc-e32c77a29c27.png'), '03', )
,
            Level(AssetImage('assets/images/e8ab88df-438c-4377-8867-ca5b744d3391.png'), '04', )
,            Level(AssetImage('assets/images/e8ab88df-438c-4377-8867-ca5b744d3391.png'), '05', ),
            Level(AssetImage('assets/images/2f52d9de-2e3a-4f61-a57c-86a813d5ab61.png'), '06', ),


          ],

        ),
      ),
    );

  }
}

