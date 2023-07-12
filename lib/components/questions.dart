import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled6/bloc/quiz_cubit.dart';

class Questions extends StatefulWidget {
  const Questions({Key? key}) : super(key: key);

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {

  @override
  Widget build(BuildContext context) {
    final cubit =QuizCubit.get(context);
    return Scaffold(
    appBar: AppBar(
    ),
    body: Container(
    decoration: BoxDecoration(
    image: DecorationImage(image: AssetImage('assets/images/istockphoto-865577704-170667a.webp'),fit: BoxFit.cover)
    ),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
    Padding(
    padding: EdgeInsets.all(16.0),

    // child: Text(
    // 'what is the 6 planet in the solar system? ',
    // style: TextStyle(
    // fontSize: 24.0,
    // fontWeight: FontWeight.bold,
    // color: Colors.white
    // ),
    // ),
    ),
    Divider(),
    // Expanded(
    //   child: ListView.builder(
    //     itemCount: widget.choices.length,
    //     itemBuilder: (BuildContext context, int index) {
    //       return RadioListTile(
    //         title: Text(widget.choices[index]),
    //         value: index,
    //         groupValue: _selectedChoiceIndex,
    //
    //          onChanged: (int? value) {
    //         //   setState(() {
    //         //     _selectedChoiceIndex = value;
    //         //   });
    //         },
    //       );
    //     },
    //   ),
    // ),
    Padding(
    padding: EdgeInsets.all(16.0),
    child: Image(image:  AssetImage('assets/images/solar system.jpeg'),fit: BoxFit.cover,),
    ),
    Padding(
    padding: EdgeInsets.all(16.0),
    child: ElevatedButton(
    onPressed: () {
    // TODO: Handle answer and navigate to the next question.
    },
    child: Text('Next'),
    ),
    ),
    ],
    ),
    ),

    ) ;
  }
}


