import 'package:flutter/material.dart';

class GetInputFromKBD extends StatefulWidget {
  const GetInputFromKBD({Key? key}) : super(key: key);

  @override
  State<GetInputFromKBD> createState() => _GetInputFromKBDState();
}

class _GetInputFromKBDState extends State<GetInputFromKBD> {
  final _textController = TextEditingController();
  String userPost = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                child: Center(
                    child: Text(
                      userPost,
                      style: const TextStyle(fontSize: 35)
                      )
                  )
            ),
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                  hintText: "What's on your mind ?",
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: () {
                      _textController.clear();
                    },
                    icon: const Icon(Icons.clear),
                  )),
            ),
            const SizedBox(height: 20),
            MaterialButton(
                onPressed: () {
                  setState(() {
                    userPost = _textController.text;
                  });
                },
                color: Colors.blue,
                child: const Text(
                  "POST",
                  style: TextStyle(color: Colors.white),
                )),
          ],
        ),
      ),
    );
  }
}
