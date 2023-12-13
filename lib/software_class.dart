import 'package:flutter/material.dart';

class ClassScreen extends StatefulWidget {
  const ClassScreen({super.key});

  @override
  State<ClassScreen> createState() => _ClassScreenState();
}

class _ClassScreenState extends State<ClassScreen> {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "WHATSAPP",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 26,
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        
                        children: [
                          Icon(Icons.camera_alt_outlined),
                          SizedBox(width: 10,),
                          Icon(Icons.search),
                          SizedBox(width: 10,),
                          CircleAvatar(),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20,),
              SingleChildScrollView(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Text("Chats"),
                   Text("updates"),
                    Text("calls"),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
