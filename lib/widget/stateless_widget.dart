import 'package:flutter/material.dart';
import 'package:primeiro_projeto_flutter/widget/statefull_widget.dart';


class MyStateLessWidget extends StatefulWidget {
  const MyStateLessWidget({super.key});

  @override
  State<MyStateLessWidget> createState() => _MyStateLessWidgetState();
}
class _MyStateLessWidgetState extends  State<MyStateLessWidget> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
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
              setState(() {
              count++;
              });
            },
            child: Text("Clique aqui")
        ),
        MeuStateFullWidget(callback: () => {
          setState(() {
          count++;
          })
        },),
      ],
    );
  }
}
