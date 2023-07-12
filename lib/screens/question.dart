
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled6/bloc/quiz_cubit.dart';
import 'package:untitled6/screens/home_page.dart';
import 'package:untitled6/screens/results.dart';

class QuestionPage extends StatefulWidget {
  late final String question;
  late final List<String> choices;

  @override
  _QuestionPageState createState() => _QuestionPageState();

}

class _QuestionPageState extends State<QuestionPage> {

  // void initState() {
  //   super.initState();
  //  // _selectedChoices = List.generate(widget.choices.length, (index) => false);
  // }
  @override
  Widget build(BuildContext context) {
    List<bool> _selectedChoices;
    return BlocConsumer<QuizCubit, QuizState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
          ),
          body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(
                    'assets/images/istockphoto-865577704-170667a.webp'),
                    fit: BoxFit.cover)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'what is the 6 planet in the solar system? ',
                    style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                  ),
                ),
                Divider(),
                // Expanded(
                //   child: ListView.builder(
                //     itemCount: widget.choices.length,
                //     itemBuilder: (BuildContext context, int index) {
                //       return
                //         CheckboxListTile(
                //
                //        );
                //     },
                //   ),
                // ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Image(
                    image: AssetImage('assets/images/solar system.jpeg'),
                    fit: BoxFit.cover,),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: ElevatedButton(
                        onPressed: () {

                        },
                        child: const Text('Previous'),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Container(

                        width: 100,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>  ResultsScreen()),
                            );
                          },
                          child: const Text('Next'),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}