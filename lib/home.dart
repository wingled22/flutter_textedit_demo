import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  var res = 1.0;

  final t1 = TextEditingController();
  final t2 = TextEditingController();

  void addFunct() {
    // print(t1.value);
    // print(t2.value);
    // t1.clear();
    // t2.clear();

    setState(() {
      res = double.parse(t1.text) + double.parse(t2.text);
    });

    
    print(res);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Center(child: Text("Sheesh"))),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const Center(
                  child: Text(
                    "Result",
                    style: TextStyle(
                      color: Color.fromRGBO(33, 150, 243, 1),
                      fontSize: 30,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    res.toString(),
                    style: const TextStyle(
                        color: Color.fromRGBO(33, 150, 243, 1),
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: t1,
                    decoration: const InputDecoration(
                        hintText: "First number",
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                          width: 15,
                          color: Colors.deepPurple,
                          style: BorderStyle.solid,
                        ))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: t2,
                    decoration: const InputDecoration(
                        hintText: "second number",
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                          width: 15,
                          color: Colors.deepPurple,
                          style: BorderStyle.solid,
                        ))),
                  ),
                ),
                GestureDetector(
                  onTap: addFunct,
                  child: Container(
                    color: Colors.amber,
                    child: const Padding(
                      padding: EdgeInsets.all(30.0),
                      child: Text("Add"),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
