import 'package:flutter/material.dart';
import 'package:sider_alhadjar/components/CostumeListTile.dart';
import 'package:sider_alhadjar/generated/l10n.dart';
import 'package:sider_alhadjar/main.dart';

class Language extends StatefulWidget {
  const Language({Key? key}) : super(key: key);
  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).Language),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            CustomListTile(
              title: S.of(context).French,
              fontSize: 20,
              onTap: () {
                MyApp.changeLanguage('fr');
              },
            ),
            CustomListTile(
              title: S.of(context).English,
              fontSize: 20,
              onTap: () {
                MyApp.changeLanguage('en');
              },
            ),
            CustomListTile(
              title: S.of(context).Arabic,
              fontSize: 20,
              onTap: () {
                MyApp.changeLanguage('ar');
              },
            ),
          ],
        ),
      ),
    );
  }
}
