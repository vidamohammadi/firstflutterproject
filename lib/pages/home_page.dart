import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child:Column(
          children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'Hello,',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                        'Vida,',
                         style: TextStyle(
                             fontWeight: FontWeight.bold,
                             fontSize: 24
                         ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Colors.deepPurple[100],
                      borderRadius: BorderRadius.circular(12),
                  ),
                    child: Icon(Icons.person)
                ),
              ],
            ),
          ),

          SizedBox(height: 25),

          Container(
            child: Row(children: [
              Column(children: [
                Text('How do you feel?'),
                Text('Fill out your medical card right now'),
              ],
              )
            ]),
          ),
        ],),
      )
    );
  }
}
