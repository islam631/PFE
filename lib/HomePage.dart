import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sider_alhadjar/Provider/provider.dart';
import 'package:sider_alhadjar/components/CardSiderAc.dart';
import 'package:sider_alhadjar/components/CostumeTitleSection.dart';
import 'package:sider_alhadjar/components/ImageCon.dart';
import 'package:sider_alhadjar/components/NavigationDrawer.dart';
import 'package:sider_alhadjar/components/decouvrirCard.dart';
import 'package:sider_alhadjar/generated/l10n.dart';

class HomePage extends StatefulWidget {
  final ScrollController HomeScrollController;
  const HomePage({Key? key, required this.HomeScrollController})
      : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late UiProvider uiProvider;
  @override
  void initState() {
    super.initState();
    uiProvider = Provider.of<UiProvider>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigatiorDrawer(),
      body: ListView(
        controller: widget.HomeScrollController,
        children: [
          Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                padding: EdgeInsets.only(left: 15, right: 25, top: 40),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  image: DecorationImage(
                    image: AssetImage('assets/images/main_screen/main5.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Builder(
                      builder: (context) {
                        return IconButton(
                          iconSize: 35,
                          onPressed: () {
                            Scaffold.of(context).openDrawer();
                          },
                          icon: Icon(
                            Icons.menu,
                            color: Colors.black,
                          ),
                        );
                      },
                    ),
                    //container of the texts in the main screen
                    Container(
                      padding: EdgeInsets.only(left: 50, top: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.red,
                                  width: 1.0,
                                ),
                              ),
                            ),
                            child: Text(
                              S.of(context).tousEnsemble,
                              style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Text(
                              S.of(context).avenirEnAcier,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Transform.translate(
                offset: Offset(0, -40),
                child: Container(
                  height: 80,
                  margin: EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      DecouvrirCard(
                        title: S.of(context).historique,
                        image:
                            "assets/images/images_button_accueil/historique.png",
                        onTap: () {},
                      ),
                      DecouvrirCard(
                          title: S.of(context).quisommesnous,
                          image:
                              "assets/images/images_button_accueil/quisommenous.jpg",
                          onTap: () {}),
                      DecouvrirCard(
                          title: S.of(context).produits,
                          image:
                              "assets/images/images_button_accueil/produits.jpg",
                          onTap: () {}),
                      DecouvrirCard(
                          title: S.of(context).politiques,
                          image:
                              "assets/images/images_button_accueil/politiques.jpg",
                          onTap: () {}),
                      DecouvrirCard(
                          title: S.of(context).certificates,
                          image:
                              "assets/images/images_button_accueil/certificates.png",
                          onTap: () {}),
                    ],
                  ),
                ),
              ),
              Container(
                height: 150,
                margin:
                    EdgeInsets.only(top: 0, right: 15, left: 15, bottom: 20),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: uiProvider.isDark
                      ? Color.fromARGB(255, 39, 39, 39)
                      : Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                      spreadRadius: 1,
                    ),
                  ],
                  image: DecorationImage(
                    image: AssetImage('assets/images/main_screen/actuel.png'),
                    fit: BoxFit.fitHeight,
                    opacity: 0.2,
                  ),
                ),
                child: Column(
                  children: [
                    CostumeTitleSection(
                        title: S.of(context).actulites, onTap: () {}),
                    Text(
                      S.of(context).textActulites,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 570,
                margin: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  color: uiProvider.isDark
                      ? Color.fromARGB(255, 39, 39, 39)
                      : Color.fromARGB(213, 240, 240, 240),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Text(
                        "SIDER EL HADJAR",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CardSiderAc(
                          title: S.of(context).quisommesnous,
                          image: 'assets/images/main_screen/footer.jpg',
                          onTap: () {},
                          text: S.of(context).siderDEsc,
                        ),
                        CardSiderAc(
                          title: S.of(context).nosproduits,
                          image: 'assets/images/main_screen/main3.jpg',
                          onTap: () {},
                          text: S.of(context).siderPro,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 150,
                          margin: EdgeInsets.symmetric(horizontal: 15),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/main_screen/politiqueQualite.jpg'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.black.withOpacity(0),
                                    Colors.black.withOpacity(0.8),
                                  ],
                                ),
                              ),
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    S.of(context).PolitiQuali,
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 80,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  S.of(context).politiqueQualite,
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 280,
                width: double.infinity,
                margin: EdgeInsets.only(left: 15, right: 15, bottom: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                      spreadRadius: 1,
                    ),
                  ],
                  color: uiProvider.isDark
                      ? Color.fromARGB(255, 39, 39, 39)
                      : Colors.white,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        S.of(context).clientRefe,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ImageCon(
                              imagePath:
                                  "assets/images/main_screen/marcegaglia.png"),
                          ImageCon(
                              imagePath:
                                  "assets/images/main_screen/naftal_logo.png"),
                          ImageCon(
                              imagePath:
                                  "assets/images/main_screen/sonatrach.png"),
                          ImageCon(
                              imagePath:
                                  "assets/images/main_screen/Sonlgaz.png"),
                          ImageCon(
                              imagePath:
                                  "assets/images/main_screen/Cosider.png"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
