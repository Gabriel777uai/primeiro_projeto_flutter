import 'package:flutter/material.dart';


class MeuStateFullWidget extends StatefulWidget {
  final void Function() callback;
  const MeuStateFullWidget({super.key, required this.callback});

  @override
  State<MeuStateFullWidget> createState() => _MeuStateFullWidgetState();
}

class _MeuStateFullWidgetState extends State<MeuStateFullWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
          onPressed:
           () {
            widget.callback();
           },
            child: Text("Clique em outro Widget"),
        ),
      ],
    );
  }
}

