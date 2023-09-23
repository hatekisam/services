import 'package:flutter/material.dart';

class DropItem extends StatefulWidget {
  final String title;
  final String body;

  DropItem({required this.body, required this.title});

  @override
  _DropItemState createState() => _DropItemState();
}

class _DropItemState extends State<DropItem> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Text(
                widget.title,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  isExpanded = !isExpanded;
                });
              },
              icon: Icon(
                isExpanded ? Icons.arrow_drop_down_rounded : Icons.arrow_right,
                size: 30,
              ),
            ),
          ],
        ),
        if (isExpanded)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              widget.body,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.black45,
              ),
            ),
          ),
        Divider(),
      ],
    );
  }
}
