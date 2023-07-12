import 'package:flutter/material.dart';
import 'package:untitled6/screens/levels_screen.dart';
//import 'package:untitled6/screens/levels_screen.dart';

class HomaPage extends StatelessWidget {
  const HomaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/HD-wallpaper-pixel-night-sky-black-blue-galaxy-night-pixel-purple-sky-stars-thumbnail.jpg'),fit: BoxFit.cover)
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

            Icon(Icons.lightbulb,color: Colors.yellow,size: 150,),
              Text("Quizzles",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50,color: Colors.greenAccent)),
              Text('Let`s Play!',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 27,color: Colors.white)),
                Text('Play now and level up',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white)),
        Column(
mainAxisAlignment:  MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                color: Colors.purple,
                width: 200,
                height: 40,
                child: ElevatedButton(
style:ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.deepPurple.shade400)),
                  child: const Text('Play Now',style:TextStyle(fontSize: 25)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LevelsScreen()),
                    );
                  },
                ),
              ),
            ),
           Container(

               width: 200,
               height: 40,
             child:  ElevatedButton(
               style:ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.purple.shade900)),
               child: const Text('Play Now',style:TextStyle(fontSize: 25) ),
               onPressed: () {
                 Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => const LevelsScreen()),
                 );
               },
             ),
           )
          ],
        )
            ],
          ),
        ),
      ),
    );
  }
}
