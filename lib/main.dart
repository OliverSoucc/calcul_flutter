import 'package:flutter/material.dart';
import 'commands.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(
        title: 'Calculator App',
        calculatorState: CalculatorState.empty(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.title, required this.calculatorState});

  final String title;
  CalculatorState calculatorState;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _enteredNumbers = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Text('Stack: ${widget.calculatorState.registry.join(' ')}'),
                Text('Entered numbers: $_enteredNumbers'),
                Row(
                  children: [
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.orange),
                      ),
                      onPressed: () {
                        setState(() {
                          widget.calculatorState = commands[3](_enteredNumbers)
                              .execute(widget.calculatorState);
                        });
                      },
                      child: Text('Clear'),
                    ),
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.orange),
                      ),
                      onPressed: () {
                        setState(() {
                          widget.calculatorState = commands[6](_enteredNumbers)
                              .execute(widget.calculatorState);
                        });
                      },
                      child: Text('*'),
                    ),
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.orange),
                      ),
                      onPressed: () {
                        setState(() {
                          widget.calculatorState = commands[7](_enteredNumbers)
                              .execute(widget.calculatorState);
                        });
                      },
                      child: Text('/'),
                    ),
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.orange),
                      ),
                      onPressed: () {
                        setState(() {
                          widget.calculatorState = commands[4](_enteredNumbers)
                              .execute(widget.calculatorState);
                        });
                      },
                      child: Text('+'),
                    ),
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.orange),
                      ),
                      onPressed: () {
                        setState(() {
                          widget.calculatorState = commands[5](_enteredNumbers)
                              .execute(widget.calculatorState);
                        });
                      },
                      child: Text('-'),
                    ),
                  ],
                ),
                Row(
                  children: [
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.orange),
                      ),
                      onPressed: () {
                        setState(() {
                          _enteredNumbers += '7';
                        });
                      },
                      child: Text('7'),
                    ),
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.orange),
                      ),
                      onPressed: () {
                        setState(() {
                          _enteredNumbers += '8';
                        });
                      },
                      child: Text('8'),
                    ),
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.orange),
                      ),
                      onPressed: () {
                        setState(() {
                          _enteredNumbers += '9';
                        });
                      },
                      child: Text('9'),
                    ),
                  ],
                ),
                Row(
                  children: [
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.orange),
                      ),
                      onPressed: () {
                        setState(() {
                          _enteredNumbers += '4';
                        });
                      },
                      child: Text('4'),
                    ),
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.orange),
                      ),
                      onPressed: () {
                        setState(() {
                          _enteredNumbers += '5';
                        });
                      },
                      child: Text('5'),
                    ),
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.orange),
                      ),
                      onPressed: () {
                        setState(() {
                          _enteredNumbers += '6';
                        });
                      },
                      child: Text('6'),
                    ),
                  ],
                ),
                Row(
                  children: [
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.orange),
                      ),
                      onPressed: () {
                        setState(() {
                          _enteredNumbers += '1';
                        });
                      },
                      child: Text('1'),
                    ),
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.orange),
                      ),
                      onPressed: () {
                        setState(() {
                          _enteredNumbers += '2';
                        });
                      },
                      child: Text('2'),
                    ),
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.orange),
                      ),
                      onPressed: () {
                        setState(() {
                          _enteredNumbers += '3';
                        });
                      },
                      child: Text('3'),
                    ),
                  ],
                ),
                Row(
                  children: [
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.orange),
                      ),
                      onPressed: () {
                        setState(() {
                          widget.calculatorState = commands[0](_enteredNumbers)
                              .execute(widget.calculatorState);

                          _enteredNumbers = '';
                        });
                      },
                      child: Text('Enter'),
                    )
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
