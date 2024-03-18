import 'package:flutter/material.dart';
import 'package:sider_alhadjar/components/NavigationDrawer.dart';

class Products extends StatefulWidget {
  final ScrollController productsScrollController;
  const Products({super.key, required this.productsScrollController});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigatiorDrawer(),
      body: ListView(
        controller: widget.productsScrollController,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            height: 1500,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 230, 230, 230),
            ),
            child: Center(
              child: Text(
                "Products",
                style: TextStyle(fontSize: 30, color: Colors.red),
              ),
            ),
          )
        ],
      ),
    );
  }
}
