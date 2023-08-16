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
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Sudoku for kids'),
          backgroundColor: Colors.deepPurple.shade100,
          foregroundColor: Colors.black,
        ),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100.0),
                child: SizedBox(
                  width: 400,
                  height: 400,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        style: BorderStyle.solid,
                        color: Colors.deepPurple.shade100,
                        width: 2,
                      ),
                      // borderRadius: BorderRadius.circular(0),
                    ),
                    padding: const EdgeInsets.all(2),
                    child: GridView.count(
                      crossAxisCount: 4,
                      crossAxisSpacing: 3,
                      mainAxisSpacing: 3,
                      children: List.generate(16, (index) {
                        return Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              style: BorderStyle.solid,
                              color: Colors.deepPurple.shade100,
                              width: 2,
                            ),
                            // borderRadius: BorderRadius.circular(0),
                          ),
                          child: Center(
                            child: Text('$index',
                                style:
                                    Theme.of(context).textTheme.headlineSmall),
                          ),
                        );
                      }),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              // 3 buttons in a row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('New Game'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Check'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Solve'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
