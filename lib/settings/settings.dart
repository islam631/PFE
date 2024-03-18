import 'package:flutter/material.dart';
import 'package:sider_alhadjar/components/CostumeListTile.dart';
import 'package:sider_alhadjar/generated/l10n.dart';

class settings extends StatefulWidget {
  const settings({super.key});

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).settings),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            CustomListTile(
              title: S.of(context).Language,
              fontSize: 20,
              onTap: () {
                Navigator.of(context).pushNamed("Language");
              },
            ),
            CustomListTile(
                title: S.of(context).mode,
                fontSize: 20,
                onTap: () {
                  Navigator.of(context).pushNamed("mode");
                })
          ],
        ),
      ),
    );
  }
}
