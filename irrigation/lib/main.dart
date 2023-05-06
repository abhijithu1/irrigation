import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'globals.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IRRIGATION',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _temperature = 45;
  final _humidity = 100.0;
  final _moisture = 50.0;

  void _refreshHomeScreen() {
    setState(() {});
  }

  void _updateTemperature(int value) {
    setState(() {
      _temperature = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[400],
        shadowColor: Colors.redAccent,
        centerTitle: true,
        title: const Text(
          "IRRIGATION",
          style: TextStyle(
            color: Colors.green,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Expanded(
                      child: Column(children: [
                    SfRadialGauge(
                      axes: <RadialAxis>[
                        RadialAxis(
                          minimum: 0,
                          maximum: 100,
                          showLabels: true,
                          showTicks: true,
                          axisLineStyle: const AxisLineStyle(
                            thickness: 0.2,
                            cornerStyle: CornerStyle.bothCurve,
                            color: Color.fromARGB(30, 225, 138, 24),
                            thicknessUnit: GaugeSizeUnit.factor,
                          ),
                          pointers: <GaugePointer>[
                            RangePointer(
                              value: _humidity.toDouble(),
                              width: 0.2,
                              sizeUnit: GaugeSizeUnit.factor,
                            ),
                            NeedlePointer(
                              value: _humidity.toDouble(),
                              needleLength: 0.7,
                              lengthUnit: GaugeSizeUnit.factor,
                              needleColor:
                                  const Color.fromARGB(180, 212, 20, 164),
                              enableAnimation: true,
                              animationType: AnimationType.bounceOut,
                              animationDuration: 1500,
                              knobStyle: const KnobStyle(
                                  knobRadius: 0.07,
                                  borderWidth: 0.02,
                                  borderColor: Colors.red,
                                  sizeUnit: GaugeSizeUnit.factor,
                                  color: Color.fromARGB(180, 17, 176, 30)),
                            )
                          ],
                        )
                      ],
                    ),
                    const Text(
                      'Humidity',
                      style: TextStyle(fontSize: 16),
                    )
                  ])),
                  Expanded(
                      child: Column(children: [
                    SfRadialGauge(
                      axes: <RadialAxis>[
                        RadialAxis(
                          minimum: 0,
                          maximum: 100,
                          showLabels: true,
                          showTicks: true,
                          axisLineStyle: const AxisLineStyle(
                            thickness: 0.2,
                            cornerStyle: CornerStyle.bothCurve,
                            color: Color.fromARGB(30, 225, 138, 24),
                            thicknessUnit: GaugeSizeUnit.factor,
                          ),
                          pointers: <GaugePointer>[
                            RangePointer(
                              value: _moisture.toDouble(),
                              width: 0.2,
                              sizeUnit: GaugeSizeUnit.factor,
                            ),
                            NeedlePointer(
                              enableAnimation: true,
                              animationType: AnimationType.bounceOut,
                              animationDuration: 1500,
                              value: _moisture.toDouble(),
                              needleLength: 0.7,
                              lengthUnit: GaugeSizeUnit.factor,
                              needleColor:
                                  const Color.fromARGB(180, 212, 20, 164),
                              knobStyle: const KnobStyle(
                                  knobRadius: 0.07,
                                  borderWidth: 0.02,
                                  borderColor: Colors.red,
                                  sizeUnit: GaugeSizeUnit.factor,
                                  color: Color.fromARGB(180, 17, 176, 30)),
                            )
                          ],
                        )
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 30),
                      child: Text(
                        'Moisture',
                        style: TextStyle(fontSize: 16),
                      ),
                    )
                  ]))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Temperature: ${_temperature.toString()} C',
                style: const TextStyle(fontSize: 16),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ThirdScreen(),
                              ));
                        },
                        style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll<Color>(Colors.green),
                        ),
                        child: const Text('AUTO MODE'),
                      ),
                      Text("ON TIME: $hourHome : $minHome ")
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SecondScreen(),
                          ));
                    },
                    style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll<Color>(Colors.green),
                    ),
                    child: const Text('MANUAL MODE'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(onPressed: () {}, icon: const Icon(Icons.home))
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[400],
        shadowColor: Colors.redAccent,
        centerTitle: true,
        title: const Text(
          "MANUAL MODE",
          style: TextStyle(
            color: Colors.green,
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  final _formkey = GlobalKey<FormState>();
  final _formkey1 = GlobalKey<FormState>();
  void _refreshHomeScreen() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber[400],
          shadowColor: Colors.redAccent,
          centerTitle: true,
          title: const Text(
            "IRRIGATION",
            style: TextStyle(
              color: Colors.green,
            ),
          ),
        ),
        backgroundColor: Colors.white,
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
                      key: _formkey,
                      child: TextFormField(
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
                      key: _formkey1,
                      child: TextFormField(
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
                          }
                          return null;
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
                          if (_formkey.currentState!.validate() &&
                              _formkey1.currentState!.validate()) {
                            _formkey.currentState!.save();
                            _formkey1.currentState!.save();
                            hourHome = hour;
                            minHome = min;
                            print('Hour: $hour, Minute: $min');
                          }
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
                    Navigator.pop(context);
                    _refreshHomeScreen();
                  },
                  icon: const Icon(Icons.home))
            ],
          ),
        ));
  }
}
