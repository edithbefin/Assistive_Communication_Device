import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import "package:flutter/material.dart";
import 'package:flutter_bluetooth_serial_example/command_selection.dart';

import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:text_to_speech/text_to_speech.dart';

import 'DiscoveryPage.dart';

class Home extends StatefulWidget {
  //+static ValueNotifier<String> entredvalue = ValueNotifier("");
  late final String command1;
  late final String command2;
  late final String command3;
  late final String command4;
  late final String command5;
  late final String command6;
  late final String command7;
  late final String command8;
  late final String command9;
  late final String command10;
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextToSpeech tts = TextToSpeech();
  BluetoothState _bluetoothState = BluetoothState.UNKNOWN;
  String _address = "...";
  String _name = "...";
  Timer? _discoverableTimeoutTimer;
  int _discoverableTimeoutSecondsLeft = 0;
  late String _selectedDevice;
  String printcommand = " ";
  String status = "Bluetooth disconnected";
  String cmd = "";

  @override
  void initState() {
    super.initState();

    // Get current state
    FlutterBluetoothSerial.instance.state.then((state) {
      setState(() {
        _bluetoothState = state;
      });
    });

    Future.doWhile(() async {
      // Wait if adapter not enabled
      if ((await FlutterBluetoothSerial.instance.isEnabled) ?? false) {
        return false;
      }
      await Future.delayed(Duration(milliseconds: 0xDD));
      return true;
    }).then((_) {
      // Update the address field
      FlutterBluetoothSerial.instance.address.then((address) {
        setState(() {
          _address = address!;
        });
      });
    });

    FlutterBluetoothSerial.instance.name.then((name) {
      setState(() {
        _name = name!;
      });
    });

    // Listen for futher state changes
    FlutterBluetoothSerial.instance
        .onStateChanged()
        .listen((BluetoothState state) {
      setState(() {
        _bluetoothState = state;
        _discoverableTimeoutSecondsLeft = 0;
      });
    });
  }

  @override
  void dispose() {
    FlutterBluetoothSerial.instance.setPairingRequestHandler(null);
    // _collectingTask?.dispose();
    _discoverableTimeoutTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

//body
      body: Column(
        children: [
          Row(
            children: [
              Text(
                "Hi user",
                style: GoogleFonts.bebasNeue(
                  fontSize: 56,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 192, 145, 220)
                        .withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 10,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 170,

                    width: 210,
                    //child: Lottie.asset('assets/hos.json'),
                    child: Lottie.network(
                        'https://assets1.lottiefiles.com/packages/lf20_9xrenieu.json'),
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(height: 25),
              Row(
                children: [
                  Container(
                    height: 120,
                    width: 200,
                    child: Image.asset("assets/doctor.png"),
                  ),
                  Column(
                    children: [
                      Text(
                        "WELCOME TO ",
                        style: GoogleFonts.bebasNeue(fontSize: 32),
                        textAlign: TextAlign.center,
                      ),
                      Center(
                        child: Text(
                          "LET'S TALK",
                          style: GoogleFonts.bebasNeue(fontSize: 32),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: 275,
                  height: 120,
                  decoration: BoxDecoration(
                      // color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(255, 192, 145, 220)
                              .withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        ),
                      ]),
                  child: Center(
                    child: Text(
                      status,
                      style: GoogleFonts.bebasNeue(fontSize: 30),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 192, 145, 220)
                            .withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Container(
                    //
                    child: Column(
                      children: [
                        SwitchListTile(
                          title: Text(
                            'Enable Bluetooth',
                            style: GoogleFonts.bebasNeue(
                                color: Colors.black, fontSize: 25),
                          ),
                          value: _bluetoothState.isEnabled,
                          onChanged: (bool value) {
                            // Do the request and update with the true value then
                            future() async {
                              // async lambda seems to not working-
                              if (value)
                                await FlutterBluetoothSerial.instance
                                    .requestEnable();
                              else
                                await FlutterBluetoothSerial.instance
                                    .requestDisable();
                            }

                            future().then((_) {
                              setState(() {});
                            });
                          },
                        ),
                        ListTile(
                          title: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll(Colors.black)),
                              child: Text(
                                'Explore Discovered devices',
                                style: GoogleFonts.bebasNeue(fontSize: 19),
                              ),
                              onPressed: () async {
                                final BluetoothDevice? selectedDevice =
                                    await Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return DiscoveryPage();
                                    },
                                  ),
                                );

                                if (selectedDevice != null) {
                                  print('Discovery -> selected ' +
                                      selectedDevice.address);
                                  setState(() {
                                    _selectedDevice = selectedDevice.address;
                                  });
                                } else {
                                  print('Discovery -> no device selected');
                                }
                              }),
                        ),
                        Divider(),
                        Builder(builder: (context) {
                          return ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.black)),
                            onPressed: () async {
                              BluetoothConnection connection =
                                  await BluetoothConnection.toAddress(
                                      _selectedDevice);

                              setState(() {
                                status = "Bluetooth Connected";
                              });
                              print("Connected to" + _selectedDevice);

                              connection.input!.listen(
                                (Uint8List data) {
                                  print('Data incoming: ${ascii.decode(data)}');
                                  setState(() {
                                    printcommand = ascii.decode(data);
                                  });

                                  if (printcommand == "one") {
                                    tts.speak(command1);
                                    setState(() {
                                      cmd = command1;
                                    });
                                  } else if (printcommand == "two") {
                                    tts.speak(command2);
                                    setState(() {
                                      cmd = command2;
                                    });
                                  } else if (printcommand == "three") {
                                    tts.speak(command3);
                                    setState(() {
                                      cmd = command3;
                                    });
                                  } else if (printcommand == "four") {
                                    tts.speak(command4);
                                    setState(() {
                                      cmd = command4;
                                    });
                                  } else if (printcommand == "five") {
                                    tts.speak(command5);
                                    setState(() {
                                      cmd = command5;
                                    });
                                  } else if (printcommand == "six") {
                                    tts.speak(command6);
                                    setState(() {
                                      cmd = command6;
                                    });
                                  } else if (printcommand == "seven") {
                                    tts.speak(command7);
                                    setState(() {
                                      cmd = command7;
                                    });
                                  } else if (printcommand == "eight") {
                                    tts.speak(command8);
                                    setState(() {
                                      cmd = command8;
                                    });
                                  }

                                  connection.output.add(data);
                                  if (ascii.decode(data).contains('!')) {
                                    connection.finish();
                                    print('Disconnecting by local host');
                                    setState(() {
                                      status = "Bluetooth Disconnected";
                                    });
                                  }
                                },
                              );
                            },
                            child: Text(
                              "connect device",
                              style: GoogleFonts.bebasNeue(fontSize: 15),
                            ),
                          );
                        }),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            width: double.infinity,
                            height: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    color:
                                        const Color.fromARGB(255, 192, 145, 220)
                                            .withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 0,
                                    offset: Offset(0, 3),
                                  ),
                                ]),
                            child: Center(
                              child: Text(
                                cmd,
                                style: GoogleFonts.bebasNeue(
                                    fontSize: 30, color: Colors.black),
                                maxLines: 2,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
