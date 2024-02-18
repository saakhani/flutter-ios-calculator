import 'package:flutter/material.dart';

void main() {
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple, brightness: Brightness.dark),
        useMaterial3: true,
      ),
      home: const CalcHome(),
    );
  }
}

class CalcHome extends StatefulWidget {
  const CalcHome({super.key});

  @override
  State<CalcHome> createState() => _CalcHomeState();
}

class _CalcHomeState extends State<CalcHome> {

  String output = "123456";

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(child:
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              output, 
              style: TextStyle(
                fontSize: 80, 
                color: Colors.white,
                ),
              ),
            Row(
              children: [
                ElevatedButton( 
                  onPressed: () {},
                  style: ElevatedButton.styleFrom( // styling the button
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(20),
                    backgroundColor: Colors.green, // Button color
                    foregroundColor: Colors.cyan, // Splash color
                  ),
                  child: Icon(Icons.menu, color: Colors.white), // icon of the button
                ),
                ElevatedButton( 
                  onPressed: () {},
                  style: ElevatedButton.styleFrom( // styling the button
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(20),
                    backgroundColor: Colors.green, // Button color
                    foregroundColor: Colors.cyan, // Splash color
                  ),
                  child: Icon(Icons.menu, color: Colors.white), // icon of the button
                ),  
                ElevatedButton( 
                  onPressed: () {},
                  style: ElevatedButton.styleFrom( // styling the button
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(20),
                    backgroundColor: Colors.green, // Button color
                    foregroundColor: Colors.cyan, // Splash color
                  ),
                  child: Icon(Icons.menu, color: Colors.white), // icon of the button
                ),
                ElevatedButton( 
                  onPressed: () {},
                  style: ElevatedButton.styleFrom( // styling the button
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(20),
                    backgroundColor: Colors.green, // Button color
                    foregroundColor: Colors.cyan, // Splash color
                  ),
                  child: Icon(Icons.menu, color: Colors.white), // icon of the button
                ),              
              ],
            )
          ],
        ),
      ),
      ),
    );
  }
}
