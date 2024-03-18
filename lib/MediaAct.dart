import 'package:flutter/material.dart';
import 'package:sider_alhadjar/components/NavigationDrawer.dart';

class MediaAct extends StatefulWidget {
  final ScrollController mediaActScrollController;
  const MediaAct({Key? key, required this.mediaActScrollController})
      : super(key: key);

  @override
  State<MediaAct> createState() => _MediaActState();
}

class _MediaActState extends State<MediaAct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigatiorDrawer(),
      body: ListView(
        controller: widget.mediaActScrollController,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            height: 1500,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 230, 230, 230),
            ),
            child: Center(
              child: Text(
                "Media and Act",
                style: TextStyle(fontSize: 30, color: Colors.red),
              ),
            ),
          )
        ],
      ),
    );
  }
}
