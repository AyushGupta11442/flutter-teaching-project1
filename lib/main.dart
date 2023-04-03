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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.teal,
      // appBar: AppBar(
      //   title: Text('this is new project'),
      // ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assest/Screenshot_20230321_230847.png')
              // NetworkImage("https://www.google.com/imgres?imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2Fb%2Fb6%2FImage_created_with_a_mobile_phone.png%2F800px-Image_created_with_a_mobile_phone.png&tbnid=3eRt9lrXKzvA_M&vet=12ahUKEwii66HP-I3-AhXlmmMGHRLoAP4QMygBegUIARDAAQ..i&imgrefurl=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FImage&docid=0JWe7yDOKrVFAM&w=800&h=600&q=image&ved=2ahUKEwii66HP-I3-AhXlmmMGHRLoAP4QMygBegUIARDAAQ"),
            ),
           Column(
            children: [
               Text(
              "Ayush Gupta",
              style: TextStyle(
                fontFamily: 'pacifico',
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                color: Colors.teal[100],
                letterSpacing: 2.5,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
            ],
           )],
           ),
            SizedBox(height: 10,),
            Card(
              
              margin: EdgeInsets.only( left: 30, right: 30, top: 5,bottom: 5),
              child: ListTile(
                leading: Icon(
                  Icons.call,
                  color: Colors.teal[900],
                ),
                title: Text('8077721907'),
              ),

            ),
             Card(
              margin: EdgeInsets.only( left: 30, right: 30, top: 5,bottom: 5),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.teal[900],
                ),
                title: Text('ayushgupta11442.tal@gmail.com'),
              ),
            ),
            // Container(
            //   height: 20,
            //   width: 20,
            //   color: Colors.amber,
            // ),
            // SizedBox(
            //    height: 20,
            //   width: 20,
            // )
          ],
        )
      ),
    );
  }
}
