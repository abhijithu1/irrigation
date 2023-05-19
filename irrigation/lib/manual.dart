import 'package:flutter/material.dart';
import 'globals.dart';

class ManualMode extends StatefulWidget {
  const ManualMode({super.key});

  @override
  State<ManualMode> createState() => _ManualModeState();
}

class _ManualModeState extends State<ManualMode> {
  @override
  Widget build(BuildContext context) {
    if (valve1) {
      textv1 = "ON";
    } else {
      textv1 = "OFF";
    }
    if (valve2) {
      textv2 = "ON";
    } else {
      textv2 = "OFF";
    }
    if (valve1 || valve2) {
      textP = "ON";
    } else {
      textP = "OFF";
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[400],
        shadowColor: Colors.redAccent,
        centerTitle: true,
        title: const Text(
          "Irrigation",
          style: TextStyle(
            color: Colors.green,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    top: 50,
                  ),
                  child: const Text(
                    'MANUAL MODE',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Color.fromARGB(170, 53, 0, 186),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 75),
                  child: Text("PUMP STATE : $textP"),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("VALVE1 : $textv1"),
                  Text("VALVE2 : $textv2"),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Switch(
                    activeColor: Colors.red,
                    activeTrackColor: Colors.green,
                    thumbColor: MaterialStateProperty.all<Color?>(Colors.amber),
                      value: valve1,
                      onChanged: (value) {
                        setState(() {
                          if (value == true) {
                            textv1 = "ON";
                          } else {
                            textv1 = "OFF";
                          }
                        });
                      }),
                  Switch(
                    activeColor: Colors.red,
                    activeTrackColor: Colors.green,
                      value: valve2,
                      onChanged: (value) {
                        setState(() {
                          if (value == true) {
                            textv2 = "ON";
                          } else {
                            textv2 = "OFF";
                          }
                        });
                      })
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.home))
          ],
        ),
      ),
    );
  }
}
