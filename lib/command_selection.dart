import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommandSelection extends StatefulWidget {
  CommandSelection({Key? key, re}) : super(key: key);

  @override
  State<CommandSelection> createState() => _CommandSelectionState();
}

bool txtcommand1 = false;
String txt1 = "";
final text1controller = TextEditingController();
String command1 = "";

bool txtcommand2 = false;
String txt2 = "";
final text2controller = TextEditingController();
String command2 = "";

bool txtcommand3 = false;
String txt3 = "";
final text3controller = TextEditingController();
String command3 = "";

bool txtcommand4 = false;
String txt4 = "";
final text4controller = TextEditingController();
String command4 = "";

bool txtcommand5 = false;
String txt5 = "";
final text5controller = TextEditingController();
String command5 = "";

bool txtcommand6 = false;
String txt6 = "";
final text6controller = TextEditingController();
String command6 = "";

bool txtcommand7 = false;
String txt7 = "";
final text7controller = TextEditingController();
String command7 = "";

bool txtcommand8 = false;
String txt8 = "";
final text8controller = TextEditingController();
String command8 = "";

bool txtcommand9 = false;
String txt9 = "";
final text9controller = TextEditingController();
String command9 = "";

bool txtcommand10 = false;
String txt10 = "";
final text10controller = TextEditingController();
String command10 = "";
@override
void dispose() {
  text1controller.dispose();
  text2controller.dispose();
  text3controller.dispose();
  text4controller.dispose();
  text4controller.dispose();
  text5controller.dispose();
  text5controller.dispose();
  text6controller.dispose();
  text7controller.dispose();
  text8controller.dispose();
  text9controller.dispose();
  text10controller.dispose();
}

class _CommandSelectionState extends State<CommandSelection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(
                    "Command 1",
                    style: GoogleFonts.bebasNeue(),
                  ),
                  subtitle: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        hintText: "which command do you want?"),
                    enabled: txtcommand1,
                    controller: text1controller,
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                          const Color.fromARGB(255, 192, 145, 220)
                              .withOpacity(0.5),
                        )),
                        child: Text(
                          "Edit",
                          style: GoogleFonts.bebasNeue(),
                        ),
                        onPressed: () {
                          setState(() {
                            txtcommand1 = true;
                            txt1 = "Enter Command";
                          });
                        },
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                          const Color.fromARGB(255, 192, 145, 220)
                              .withOpacity(0.5),
                        )),
                        child: Text(
                          "Save",
                          style: GoogleFonts.bebasNeue(),
                        ),
                        onPressed: () {
                          setState(() {
                            txtcommand1 = false;
                            txt1 = text1controller.text;
                            command1 = txt1;
                            print(command1);
                          });
                        },
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(
                    "Command 2",
                    style: GoogleFonts.bebasNeue(),
                  ),
                  subtitle: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        hintText: "which command do you want?"),
                    enabled: txtcommand2,
                    controller: text2controller,
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                          const Color.fromARGB(255, 192, 145, 220)
                              .withOpacity(0.5),
                        )),
                        child: Text(
                          "Edit",
                          style: GoogleFonts.bebasNeue(),
                        ),
                        onPressed: () {
                          setState(() {
                            txtcommand2 = true;
                            txt2 = "Enter Command";
                          });
                        },
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                          const Color.fromARGB(255, 192, 145, 220)
                              .withOpacity(0.5),
                        )),
                        child: Text(
                          "Save",
                          style: GoogleFonts.bebasNeue(),
                        ),
                        onPressed: () {
                          setState(() {
                            txtcommand2 = false;
                            txt2 = text2controller.text;
                            command2 = txt2;
                            print(command2);
                          });
                        },
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(
                    "Command 3",
                    style: GoogleFonts.bebasNeue(),
                  ),
                  subtitle: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        hintText: "which command do you want?"),
                    enabled: txtcommand3,
                    controller: text3controller,
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                          const Color.fromARGB(255, 192, 145, 220)
                              .withOpacity(0.5),
                        )),
                        child: Text(
                          "Edit",
                          style: GoogleFonts.bebasNeue(),
                        ),
                        onPressed: () {
                          setState(() {
                            txtcommand3 = true;
                            txt3 = "Enter Command";
                          });
                        },
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                          const Color.fromARGB(255, 192, 145, 220)
                              .withOpacity(0.5),
                        )),
                        child: Text(
                          "Save",
                          style: GoogleFonts.bebasNeue(),
                        ),
                        onPressed: () {
                          setState(() {
                            txtcommand3 = false;
                            txt3 = text3controller.text;
                            command3 = txt3;
                            print(command3);
                          });
                        },
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(
                    "Command 4",
                    style: GoogleFonts.bebasNeue(),
                  ),
                  subtitle: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        hintText: "which command do you want?"),
                    enabled: txtcommand4,
                    controller: text4controller,
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                          const Color.fromARGB(255, 192, 145, 220)
                              .withOpacity(0.5),
                        )),
                        child: Text(
                          "Edit",
                          style: GoogleFonts.bebasNeue(),
                        ),
                        onPressed: () {
                          setState(() {
                            txtcommand4 = true;
                            txt4 = "Enter Command";
                          });
                        },
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                          const Color.fromARGB(255, 192, 145, 220)
                              .withOpacity(0.5),
                        )),
                        child: Text(
                          "Save",
                          style: GoogleFonts.bebasNeue(),
                        ),
                        onPressed: () {
                          setState(() {
                            txtcommand4 = false;
                            txt4 = text4controller.text;
                            command4 = txt4;
                            print(command4);
                          });
                        },
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(
                    "Command 5",
                    style: GoogleFonts.bebasNeue(),
                  ),
                  subtitle: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        hintText: "which command do you want?"),
                    enabled: txtcommand5,
                    controller: text5controller,
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                          const Color.fromARGB(255, 192, 145, 220)
                              .withOpacity(0.5),
                        )),
                        child: Text(
                          "Edit",
                          style: GoogleFonts.bebasNeue(),
                        ),
                        onPressed: () {
                          setState(() {
                            txtcommand5 = true;
                            txt5 = "Enter Command";
                          });
                        },
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                          const Color.fromARGB(255, 192, 145, 220)
                              .withOpacity(0.5),
                        )),
                        child: Text(
                          "Save",
                          style: GoogleFonts.bebasNeue(),
                        ),
                        onPressed: () {
                          setState(() {
                            txtcommand5 = false;
                            txt5 = text5controller.text;
                            command5 = txt5;
                            print(command5);
                          });
                        },
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(
                    "Command 6",
                    style: GoogleFonts.bebasNeue(),
                  ),
                  subtitle: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        hintText: "which command do you want?"),
                    enabled: txtcommand6,
                    controller: text6controller,
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                          const Color.fromARGB(255, 192, 145, 220)
                              .withOpacity(0.5),
                        )),
                        child: Text(
                          "Edit",
                          style: GoogleFonts.bebasNeue(),
                        ),
                        onPressed: () {
                          setState(() {
                            txtcommand6 = true;
                            txt6 = "Enter Command";
                          });
                        },
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                          const Color.fromARGB(255, 192, 145, 220)
                              .withOpacity(0.5),
                        )),
                        child: Text(
                          "Save",
                          style: GoogleFonts.bebasNeue(),
                        ),
                        onPressed: () {
                          setState(() {
                            txtcommand6 = false;
                            txt6 = text6controller.text;
                            command6 = txt6;
                            print(command6);
                          });
                        },
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(
                    "Command 7",
                    style: GoogleFonts.bebasNeue(),
                  ),
                  subtitle: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        hintText: "which command do you want?"),
                    enabled: txtcommand7,
                    controller: text7controller,
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                          const Color.fromARGB(255, 192, 145, 220)
                              .withOpacity(0.5),
                        )),
                        child: Text(
                          "Edit",
                          style: GoogleFonts.bebasNeue(),
                        ),
                        onPressed: () {
                          setState(() {
                            txtcommand7 = true;
                            txt7 = "Enter Command";
                          });
                        },
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                          const Color.fromARGB(255, 192, 145, 220)
                              .withOpacity(0.5),
                        )),
                        child: Text(
                          "Save",
                          style: GoogleFonts.bebasNeue(),
                        ),
                        onPressed: () {
                          setState(() {
                            txtcommand7 = false;
                            txt7 = text7controller.text;
                            command7 = txt7;
                            print(command7);
                          });
                        },
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(
                    "Command 8",
                    style: GoogleFonts.bebasNeue(),
                  ),
                  subtitle: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        hintText: "which command do you want?"),
                    enabled: txtcommand8,
                    controller: text8controller,
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                          const Color.fromARGB(255, 192, 145, 220)
                              .withOpacity(0.5),
                        )),
                        child: Text(
                          "Edit",
                          style: GoogleFonts.bebasNeue(),
                        ),
                        onPressed: () {
                          setState(() {
                            txtcommand8 = true;
                            txt8 = "Enter Command";
                          });
                        },
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                          const Color.fromARGB(255, 192, 145, 220)
                              .withOpacity(0.5),
                        )),
                        child: Text(
                          "Save",
                          style: GoogleFonts.bebasNeue(),
                        ),
                        onPressed: () {
                          setState(() {
                            txtcommand8 = false;
                            txt8 = text8controller.text;
                            command8 = txt8;
                            print(command8);
                          });
                        },
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(
                    "Command 9",
                    style: GoogleFonts.bebasNeue(),
                  ),
                  subtitle: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        hintText: "which command do you want?"),
                    enabled: txtcommand9,
                    controller: text9controller,
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                          const Color.fromARGB(255, 192, 145, 220)
                              .withOpacity(0.5),
                        )),
                        child: Text(
                          "Edit",
                          style: GoogleFonts.bebasNeue(),
                        ),
                        onPressed: () {
                          setState(() {
                            txtcommand9 = true;
                            txt9 = "Enter Command";
                          });
                        },
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                          const Color.fromARGB(255, 192, 145, 220)
                              .withOpacity(0.5),
                        )),
                        child: Text(
                          "Save",
                          style: GoogleFonts.bebasNeue(),
                        ),
                        onPressed: () {
                          setState(() {
                            txtcommand9 = false;
                            txt9 = text9controller.text;
                            command9 = txt9;
                            print(command9);
                          });
                        },
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(
                    "Command 10",
                    style: GoogleFonts.bebasNeue(),
                  ),
                  subtitle: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        hintText: "which command do you want?"),
                    enabled: txtcommand10,
                    controller: text10controller,
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                          const Color.fromARGB(255, 192, 145, 220)
                              .withOpacity(0.5),
                        )),
                        child: Text(
                          "Edit",
                          style: GoogleFonts.bebasNeue(),
                        ),
                        onPressed: () {
                          setState(() {
                            txtcommand10 = true;
                            txt10 = "Enter Command";
                          });
                        },
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                          const Color.fromARGB(255, 192, 145, 220)
                              .withOpacity(0.5),
                        )),
                        child: Text(
                          "Save",
                          style: GoogleFonts.bebasNeue(),
                        ),
                        onPressed: () {
                          setState(() {
                            txtcommand10 = false;
                            txt10 = text10controller.text;
                            command10 = txt10;
                            print(command10);
                          });
                        },
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
