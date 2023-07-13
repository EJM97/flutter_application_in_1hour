import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool? isCheckbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Learn Flutter"),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint("Search icon pressed");
            },
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              debugPrint("More icon pressed");
            },
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/coding.jpg'),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              color: Colors.blue,
              child: const Center(
                child: Text("This is a text widget",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    )),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: isSwitch ? Colors.green : Colors.red,
              ),
              onPressed: () {
                debugPrint("Elevated button pressed");
              },
              child: const Text("Elevated button"),
            ),
            OutlinedButton(
              onPressed: () {
                debugPrint("Outlined button pressed");
              },
              child: const Text("Outlined button"),
            ),
            TextButton(
              onPressed: () {
                debugPrint("Text button pressed");
              },
              child: const Text("Text button"),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint("Gesture detector tapped");
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.red,
                  ),
                  Text("Row widget"),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
            Switch(
              value: isSwitch,
              onChanged: (bool newBool) {
                setState(() {
                  isSwitch = newBool;
                });
              },
            ),
            Checkbox(
              value: isCheckbox,
              onChanged: (bool? newBool) {
                setState(
                  () {
                    isCheckbox = newBool;
                  },
                );
              },
            ),
            Image.network(
                "https://images.pexels.com/photos/47261/pexels-photo-47261.jpeg")
          ],
        ),
      ),
    );
  }
}
