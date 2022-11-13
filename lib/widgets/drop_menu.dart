import 'package:flutter/material.dart';
import 'package:mido_app/constants.dart';
import 'package:mido_app/widgets/my_text.dart';

class DropMenu extends StatefulWidget {
  const DropMenu(
      {Key? key,
      required this.data,
      required this.items,
      required this.onChanged})
      : super(key: key);

  final String data;
  final List items;
  final Function(dynamic) onChanged;

  @override
  _DropMenuState createState() => _DropMenuState();
}

class _DropMenuState extends State<DropMenu> {
  // ignore: prefer_typing_uninitialized_variables
  var dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          MyText(
            data: widget.data,
            fontSize: 12,
            // textAlign: TextAlign.left,
            color: kGrayColor,
          ),
          DropdownButton(
            value: dropdownValue,
            isExpanded: true,
            icon: const Icon(Icons.keyboard_arrow_down),
            items: widget.items.map((e) {
              return DropdownMenuItem(
                value:e,
                child: Text(e),
              );
            }).toList(),
            onChanged: (v) {
              setState(() {
                dropdownValue = v;
              });
              widget.onChanged(dropdownValue);
            },
          ),
          // DropdownButton(
          //   value: dropdownValue,
          //   isExpanded: true,
          //   icon:
          //       Icon(Icons.keyboard_arrow_down_rounded, color: kDarkGrayColor),
          //   items: widget.items
          //       .map((e) => DropdownMenuItem(
          //             child: MyText(
          //               data: '$e',
          //             ),
          //             value: e,
          //           ))
          //       .toList(),
          //   onChanged: (v) {
          //     dropdownValue = v;
          //     setState(() {});
          //     widget.onChanged(dropdownValue);
          //   },
          // ),
        ],
      ),
    );
  }
}
