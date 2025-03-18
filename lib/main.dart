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
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyColumn(),
      routes: {
        '/column': (BuildContext context) => const MyColumn(),
        "/row" : (BuildContext context) => const MyRow()
      },
    );
  }
}
class MyColumn extends StatelessWidget{
  const MyColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Column Page"),
        backgroundColor: Colors.amber,
      ),
      body:
      Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Text("I am a child Column 1", textAlign: TextAlign.center,),
          ),
          Container(
            alignment: Alignment.center,
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Text("I am A child Column 2", textAlign: TextAlign.center),
          ),
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.circular(10)
            ),
            height: 100,
            width: 100,
            child: Text("I am A child Column 3", textAlign: TextAlign.center),
          ),
          ElevatedButton(onPressed: () => {
            Navigator.pushNamed(context, "/row")
          }, child: Text("Row Page"))
        ],
      ),
      ) 
      
    );
    
  }
}

class MyRow extends StatelessWidget {
  const MyRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row Page"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Row(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              alignment: Alignment.center,
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Text("I am a child Row 1", textAlign: TextAlign.center,),
            ),
            Container(
              alignment: Alignment.center,
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Text("I am A child Row 2", textAlign: TextAlign.center),
            ),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.circular(10)
              ),
              height: 100,
              width: 100,
              child: Text("I am A child Row 3", textAlign: TextAlign.center),
            ),
          ],
        ),
      ),
    );
  }
}