import 'package:flutter/material.dart';

class ResultsScreen extends StatefulWidget {
  @override
  State<ResultsScreen> createState() => _ResultsScreenState();
}

class _ResultsScreenState extends State<ResultsScreen> {
  final int score=0;

final int answers=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Container(
    decoration: BoxDecoration(
image: DecorationImage(image: AssetImage('assets/images/istockphoto-865577704-170667a.webp'),fit: BoxFit.cover),

),
      child: Column(
         children: [
           Text('Total correct answers'),
           Text(answers.toString()),
         Container(
           color: Colors.deepPurple,
           decoration: BoxDecoration(
          borderRadius:  BorderRadius.circular(50)
           ),
           child: Column(
             children: [
               Text('Your final score is',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white)),
               Container(
                 decoration: BoxDecoration(
                   color: Colors.yellow,
                   shape: BoxShape.circle,

                 ),
                 child: Text(
                   score.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.white)
                 ),
               ),

             ],
           ),
         ),
Container(
  child: Row(
    children: [
      Icon(Icons.cloud_download_outlined,color: Colors.white),
      Text('Try Again',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white))
    ],
 ),
 )
          ],
      ),
 ),

    );
  }
}
