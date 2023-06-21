import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListWidget extends StatefulWidget {
  String txt;
  bool txtcommand;
  final textcontroller;
  String command;
  String titleName;
  ListWidget(
      {Key? key,
      required this.txt,
      required this.textcontroller,
      required this.command,
      required this.txtcommand,
      required this.titleName})
      : super(key: key);

  @override
  State<ListWidget> createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.titleName),
      subtitle: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            //label: Text(widget.txt),
            hintText: "which command do you want?"),
        enabled: widget.txtcommand,
        controller: widget.textcontroller,
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.black)),
            child: Text("Edit"),
            onPressed: () {
              setState(() {
                widget.txtcommand = true;
                widget.txt = "Enter Command";
              });
            },
          ),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.black)),
            child: Text("Save"),
            onPressed: () {
              setState(() {
                widget.txtcommand = false;
                widget.txt = widget.textcontroller.text;
                widget.command = widget.txt;
                print(widget.command);
                // Home.entredvalue = widget.textcontroller.text;
              });
            },
          )
        ],
      ),
    );
  }
}
