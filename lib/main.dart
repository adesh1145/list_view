// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  // This widget is the root of your application.
  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
var arrName = [1, 2, 3, 4, 5, 6, 7, 8, 9,10,11];
  // void createList() {
  //   for (int i = 10; i < 40; i++) {
  //     arrName.add(i);
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text("List View"),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          
          return InkWell(
            child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/images/client.png"),
              foregroundImage: AssetImage("assets/images/client.png")),
            title: Text("Name"),
            subtitle: Text("Number"),
            trailing: Text("Today"),
          ),
          onTap: () {
            
          },
          );
        },
        itemCount: arrName.length,
        separatorBuilder: (context, index) {
          return Divider(
            height: 1,
            thickness: 3,
          );
        },
      ),
    );
  }
}
