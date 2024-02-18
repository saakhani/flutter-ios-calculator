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

  String prevNumber = "";
  String currentNumber = "";
  String operation = "";

  _onButtonPressed(String text) {
    if (text == "AC") {
      prevNumber = "";
      currentNumber = "";
      operation = "";
      output = "0";
    } else if (text == "+" || text == "−" || text == "×" || text == "÷") {
      prevNumber = output;
      operation = text;
      currentNumber = "";
    } else if (text == "=") {
      double num1 = double.parse(prevNumber);
      double num2 = double.parse(currentNumber);
      if (operation == "+") {
        output = (num1 + num2).toString();
      }
      if (operation == "−") {
        output = (num1 - num2).toString();
      }
      if (operation == "×") {
        output = (num1 * num2).toString();
      }
      if (operation == "÷") {
        output = (num1 / num2).toString();
      }
      prevNumber = "";
      currentNumber = "";
      operation = "";
    } else if (text == "%") {
      double temp = double.parse(currentNumber);
      output = (temp / 100).toString();
      currentNumber = output;
    } else if (text == "\u207A/\u208B") {
        double temp = double.parse(currentNumber);
        output = (temp * -1).toString();
        currentNumber = output;
    } else {
      currentNumber = currentNumber + text;
      output = currentNumber;
    }
    setState(() {
      output = output;
    });
  }

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
                  fontSize: 90,
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(
                  height:
                      12), // SizedBox is a widget that creates a fixed space.
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Button(
                      text: "AC",
                      onPressed: () {
                        _onButtonPressed("AC");
                      },
                      bgColor: Colors.grey.shade600,
                      textColor: Colors.black),
                  Button(
                      text: "\u207A/\u208B",
                      onPressed: () {
                        _onButtonPressed("\u207A/\u208B");
                      },
                      bgColor: Colors.grey.shade600,
                      textColor: Colors.black),
                  Button(
                      text: "%",
                      onPressed: () {
                        _onButtonPressed("%");
                      },
                      bgColor: Colors.grey.shade600,
                      textColor: Colors.black),
                  Button(
                      text: "÷",
                      onPressed: () {
                        _onButtonPressed("÷");
                      },
                      bgColor: Colors.orange,
                      textColor: Colors.white),
                ],
              ),
              const SizedBox(
                  height:
                      12), // SizedBox is a widget that creates a fixed space.
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Button(
                      text: "7",
                      onPressed: () {
                        _onButtonPressed("7");
                      },
                      bgColor: Colors.grey.shade900,
                      textColor: Colors.white),
                  Button(
                      text: "8",
                      onPressed: () {
                        _onButtonPressed("8");
                      },
                      bgColor: Colors.grey.shade900,
                      textColor: Colors.white),
                  Button(
                      text: "9",
                      onPressed: () {
                        _onButtonPressed("9");
                      },
                      bgColor: Colors.grey.shade900,
                      textColor: Colors.white),
                  Button(
                      text: "×",
                      onPressed: () {
                        _onButtonPressed("×");
                      },
                      bgColor: Colors.orange,
                      textColor: Colors.white),
                ],
              ),
              const SizedBox(
                  height:
                      12), // SizedBox is a widget that creates a fixed space.
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Button(
                      text: "4",
                      onPressed: () {
                        _onButtonPressed("4");
                      },
                      bgColor: Colors.grey.shade900,
                      textColor: Colors.white),
                  Button(
                      text: "5",
                      onPressed: () {
                        _onButtonPressed("5");
                      },
                      bgColor: Colors.grey.shade900,
                      textColor: Colors.white),
                  Button(
                      text: "6",
                      onPressed: () {
                        _onButtonPressed("6");
                      },
                      bgColor: Colors.grey.shade900,
                      textColor: Colors.white),
                  Button(
                      text: "−",
                      onPressed: () {
                        _onButtonPressed("-");
                      },
                      bgColor: Colors.orange,
                      textColor: Colors.white),
                ],
              ),
              const SizedBox(
                  height:
                      12), // SizedBox is a widget that creates a fixed space.
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Button(
                      text: "1",
                      onPressed: () {
                        _onButtonPressed("1");
                      },
                      bgColor: Colors.grey.shade900,
                      textColor: Colors.white),
                  Button(
                      text: "2",
                      onPressed: () {
                        _onButtonPressed("2");
                      },
                      bgColor: Colors.grey.shade900,
                      textColor: Colors.white),
                  Button(
                      text: "3",
                      onPressed: () {
                        _onButtonPressed("3");
                      },
                      bgColor: Colors.grey.shade900,
                      textColor: Colors.white),
                  Button(
                      text: "+",
                      onPressed: () {
                        _onButtonPressed("+");
                      },
                      bgColor: Colors.orange,
                      textColor: Colors.white),
                ],
              ),
              const SizedBox(
                  height:
                      12), // SizedBox is a widget that creates a fixed space.
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80),
                    ),
                    color: Colors.grey.shade900,
                    onPressed: () {
                      _onButtonPressed("0");
                    },
                    child: Container(
                      height: 85,
                      width: 155,
                      padding: EdgeInsets.only(left: 20),
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "0",
                        style: TextStyle(
                            fontSize: 38,
                            color: Colors.white,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                  Button(
                      text: ".",
                      onPressed: () {
                        _onButtonPressed(".");
                      },
                      bgColor: Colors.grey.shade900,
                      textColor: Colors.white),
                  Button(
                      text: "=",
                      onPressed: () {
                        _onButtonPressed("=");
                      },
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
