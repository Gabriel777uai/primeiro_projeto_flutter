import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
  //runApp(const MyStateLessWidget());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: false,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Meu primeiro app flutter"),
        ),
        body: MyStateLessWidget(),
      ),
    );
  }
}

class MyStateLessWidget extends StatefulWidget {
  const MyStateLessWidget({super.key});

  @override
  State<MyStateLessWidget> createState() => _MyStateLessWidgetState();
}


class _MyStateLessWidgetState extends  State<MyStateLessWidget> {

  @override
  Widget build(BuildContext context) {
    int count = 0;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Count: $count",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 24,
              )
            ),
          ],
        ),
        SizedBox(height: 16),
        ElevatedButton(
            onPressed: () {
              count++;
            },
            child: Text("Clique aqui")
        )
      ],
    );
  }
}

