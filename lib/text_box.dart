import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController textarea = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Musuem Item Information"),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                controller: textarea,
                keyboardType: TextInputType.multiline,
                maxLines: 4,
                decoration: const InputDecoration(
                    hintText: "Enter Description",
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.black))),
              ),
              ElevatedButton(
                  onPressed: () {
                    print(textarea.text);
                  },
                  child: const Text("Submit"))
            ],
          ),
        ));
  }
}
