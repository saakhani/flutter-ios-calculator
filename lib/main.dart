import 'package:flutter/material.dart';
import './button.dart';

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
      body: SafeArea(
        child: Padding(
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
              const SizedBox(height: 12), // SizedBox is a widget that creates a fixed space.              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Button(
                      text: "AC",
                      onPressed: () {},
                      bgColor: Colors.grey.shade600,
                      textColor: Colors.black),
                  Button(
                      text: "+/-",
                      onPressed: () {},
                      bgColor: Colors.grey.shade600,
                      textColor: Colors.black),
                  Button(
                      text: "%",
                      onPressed: () {},
                      bgColor: Colors.grey.shade600,
                      textColor: Colors.black),
                  Button(
                      text: "÷",
                      onPressed: () {},
                      bgColor: Colors.orange,
                      textColor: Colors.white),
                ],
              ),
              const SizedBox(height: 12), // SizedBox is a widget that creates a fixed space.
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Button(
                      text: "7",
                      onPressed: () {},
                      bgColor: Colors.grey.shade900,
                      textColor: Colors.white),
                  Button(
                      text: "8",
                      onPressed: () {},
                      bgColor: Colors.grey.shade900,
                      textColor: Colors.white),
                  Button(
                      text: "9",
                      onPressed: () {},
                      bgColor: Colors.grey.shade900,
                      textColor: Colors.white),
                  Button(
                      text: "×",
                      onPressed: () {},
                      bgColor: Colors.orange,
                      textColor: Colors.white),
                ],
              ),
              const SizedBox(height: 12), // SizedBox is a widget that creates a fixed space.              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Button(
                      text: "4",
                      onPressed: () {},
                      bgColor: Colors.grey.shade900,
                      textColor: Colors.white),
                  Button(
                      text: "5",
                      onPressed: () {},
                      bgColor: Colors.grey.shade900,
                      textColor: Colors.white),
                  Button(
                      text: "6",
                      onPressed: () {},
                      bgColor: Colors.grey.shade900,
                      textColor: Colors.white),
                  Button(
                      text: "−",
                      onPressed: () {},
                      bgColor: Colors.orange,
                      textColor: Colors.white),
                ],
              ),
              const SizedBox(height: 12), // SizedBox is a widget that creates a fixed space.              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Button(
                      text: "1",
                      onPressed: () {},
                      bgColor: Colors.grey.shade900,
                      textColor: Colors.white),
                  Button(
                      text: "2",
                      onPressed: () {},
                      bgColor: Colors.grey.shade900,
                      textColor: Colors.white),
                  Button(
                      text: "3",
                      onPressed: () {},
                      bgColor: Colors.grey.shade900,
                      textColor: Colors.white),
                  Button(
                      text: "+",
                      onPressed: () {},
                      bgColor: Colors.orange,
                      textColor: Colors.white),
                ],
              ),
              const SizedBox(height: 12), // SizedBox is a widget that creates a fixed space.
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(
                    shape: const RoundedRectangleBorder(
                      
                      borderRadius: BorderRadius.all(
                        Radius.circular(60),
                      ),
                    ),
                    color: Colors.grey.shade900,
                    onPressed: () {},
                    child: const Text(
                      "0",
                      style: TextStyle(
                          fontSize: 35,
                          color: Colors.white,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  Button(
                      text: ".",
                      onPressed: () {},
                      bgColor: Colors.grey.shade900,
                      textColor: Colors.white),
                  Button(
                      text: "=",
                      onPressed: () {},
                      bgColor: Colors.orange,
                      textColor: Colors.white),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
