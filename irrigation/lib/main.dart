import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'auto.dart';
import 'manual.dart';
import 'globals.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    ///Dont change anything above,
    ///Below comments applicable to all the screens like auto , manual .
    ///For UI modification , change the design variables of the widgets which appear in the screen.
    ///There are some keys are also specified to some of the widgets, Dont change that too, YOU CAN CHANGE THE ROWS AND COLUMNS IF YOU WANT.

    return MaterialApp(
      title: "IRRIGATION",
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _temperature = 45;
  final _humidity = 45;
  final _moisture = 100.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 200,
              width: 600,
              child: Row(
                children: [
                  Expanded(
                    child: SfRadialGauge(
                      enableLoadingAnimation: true,
                      animationDuration: 4500,
                      title: const GaugeTitle(
                          text: 'Humidity',
                          textStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              color: Colors.black,
                              fontFamily: 'Times'),
                          alignment: GaugeAlignment.center),
                      axes: <RadialAxis>[
                        RadialAxis(
                          annotations: <GaugeAnnotation>[
                            GaugeAnnotation(
                                widget: Text(_humidity.toString(),
                                    style: const TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold)),
                                angle: 90,
                                positionFactor: 0.5)
                          ],
                          minimum: 0,
                          maximum: 100,
                          showLabels: true,
                          showLastLabel: true,
                          showTicks: true,
                          showFirstLabel: true,
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
                  ),
                  Expanded(
                    child: SfRadialGauge(
                      enableLoadingAnimation: true,
                      animationDuration: 4500,
                      title: const GaugeTitle(
                          text: 'Moisture',
                          textStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              color: Colors.black,
                              fontFamily: 'Times'),
                          alignment: GaugeAlignment.center),
                      axes: <RadialAxis>[
                        RadialAxis(
                          annotations: <GaugeAnnotation>[
                            GaugeAnnotation(
                                widget: Text(_moisture.toString(),
                                    style: const TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold)),
                                angle: 90,
                                positionFactor: 0.5)
                          ],
                          minimum: 0,
                          maximum: 100,
                          showLabels: true,
                          showLastLabel: true,
                          showTicks: true,
                          showFirstLabel: true,
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
                              value: _moisture.toDouble(),
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
                  ),
                ],
              ),
            ),
            Text(
              "Temperature: ${_temperature.toString()}C",
              style: const TextStyle(fontSize: 16),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (ctx) {
                      return const AutoMode();
                    }));
                  },
                  child: const Text(
                    "AUTO MODE",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (ctx) {
                      return const ManualMode();
                    }));
                  },
                  child: const Text(
                    "MANUAL MODE",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Text("ON TIME : $hourstr : $minstr")],
            )
          ],
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
