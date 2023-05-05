import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

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
  int _temperature = 25;
  final _humidity = 100.0;
  final _moisture = 50.0;

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
                  const SizedBox(
                    height: 10,
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
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Moisture',
                    style: TextStyle(fontSize: 16),
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
                ElevatedButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(Colors.green),
                  ),
                  child: const Text('AUTO MODE'),
                ),
                ElevatedButton(
                  onPressed: () {},
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
    );
  }
}
