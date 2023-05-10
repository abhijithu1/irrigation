import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'globals.dart';

class ManualMode extends StatefulWidget {
  const ManualMode({super.key});

  @override
  State<ManualMode> createState() => _ManualModeState();
}

class _ManualModeState extends State<ManualMode> {
  @override
  Widget build(BuildContext context) {
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
            Container(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              alignment: Alignment.topCenter,
              child: const Text(
                'MANUAL MODE',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Text("PUMP STATE : ${pump.toString()}"),
            ),
            Expanded(
              flex: 1,
              child: Text("VALVE1 : ${valve1.toString()}"),
            ),
            Expanded(
              flex: 1,
              child: Text("VALVE2 : ${valve2.toString()}"),
            ),
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
