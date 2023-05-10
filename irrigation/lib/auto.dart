import 'package:flutter/material.dart';
import 'globals.dart';

class AutoMode extends StatefulWidget {
  const AutoMode({super.key});

  @override
  State<AutoMode> createState() => _AutoModeState();
}

class _AutoModeState extends State<AutoMode> {
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();

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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 16.0),
            ),
            Container(
              alignment: Alignment.topCenter,
              child: const Text(
                'AUTO MODE',
                style: TextStyle(
                  color: Color.fromARGB(255, 36, 39, 138),
                  fontSize: 20.0,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20.0),
              child: const Text(
                "On time",
                style: TextStyle(
                  color: Color.fromARGB(255, 175, 7, 7),
                  fontSize: 25,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Form(
                    child: TextFormField(
                      controller: _controller1,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: 'Hour',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter the Hour.";
                        } else if (int.parse(value) >= 25) {
                          return "less than 24";
                        }
                        return null;
                      },
                      onSaved: (value) {
                        hour = int.parse(value!);
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Form(
                    child: TextFormField(
                      controller: _controller2,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: "Minutes",
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter the Minute.";
                        } else if (int.parse(value) >= 61) {
                          return "Less than 60";
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        min = int.parse(value!);
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    width: 250,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          hourstr = _controller1.text;
                          minstr = _controller2.text;
                        });
                        print("Hour: $hourstr , min: $minstr");
                      },
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(
                            Color.fromARGB(255, 169, 26, 171)),
                      ),
                      child: const Text('SAVE'),
                    ),
                  ),
                ),
              ],
            ),
            Text("$hourstr : $minstr")
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
