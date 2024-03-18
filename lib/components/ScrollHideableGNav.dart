import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sider_alhadjar/generated/l10n.dart';
import 'package:provider/provider.dart';
import 'package:sider_alhadjar/Provider/provider.dart';

class ScrollHideableGNav extends StatefulWidget {
  final ScrollController homeScrollController;
  final ScrollController mediaActScrollController;
  final ScrollController productsScrollController;
  final Function(int) onTabChanged;

  const ScrollHideableGNav(
      {Key? key,
      required this.onTabChanged,
      required this.homeScrollController,
      required this.mediaActScrollController,
      required this.productsScrollController})
      : super(key: key);

  @override
  _ScrollHideableGNavState createState() => _ScrollHideableGNavState();
}

class _ScrollHideableGNavState extends State<ScrollHideableGNav> {
  bool _isVisible = true;
  double _prevPosition = 0.0;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();

    widget.homeScrollController.addListener(_scrollListener);
    widget.mediaActScrollController.addListener(_scrollListener);
    widget.productsScrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    widget.homeScrollController.removeListener(_scrollListener);
    widget.mediaActScrollController.removeListener(_scrollListener);
    widget.productsScrollController.removeListener(_scrollListener);
    super.dispose();
  }

  void _scrollListener() {
    final homePosition = widget.homeScrollController.position.pixels;
    final mediaActPosition = widget.mediaActScrollController.position.pixels;
    final productsPosition = widget.productsScrollController.position.pixels;

    final newPosition = homePosition + mediaActPosition + productsPosition;
    if (newPosition - _prevPosition > 0) {
      setState(() {
        _isVisible = false;
      });
    } else if (newPosition - _prevPosition < 0) {
      setState(() {
        _isVisible = true;
      });
    }

    _prevPosition = newPosition;
  }

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);
    final isDarkMode = uiProvider.isDark;

    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: _isVisible ? kBottomNavigationBarHeight : 0,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.grey, width: 0.1),
        ),
      ),
      child: _isVisible
          ? GNav(
              tabBorder: Border.all(color: Colors.grey, width: 0.2),
              tabBackgroundColor: isDarkMode
                  ? Color.fromARGB(255, 207, 207, 207).withOpacity(0.1)
                  : Color.fromARGB(255, 228, 228, 228),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              tabMargin: EdgeInsets.symmetric(horizontal: 6, vertical: 5),
              gap: 8,
              color: isDarkMode ? Colors.grey[400] : Colors.grey[800],
              activeColor: Color.fromARGB(255, 253, 70, 70),
              iconSize: 24,
              selectedIndex: _currentIndex,
              onTabChange: (index) {
                setState(() {
                  _currentIndex = index;
                });
                widget.onTabChanged(index);
              },
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: S.of(context).acceuil,
                ),
                GButton(
                  icon: Icons.newspaper,
                  text: S.of(context).actulites,
                ),
                GButton(
                  icon: Icons.shopping_cart,
                  text: S.of(context).produits,
                ),
                GButton(
                  icon: Icons.settings,
                  text: S.of(context).settings,
                ),
              ],
            )
          : SizedBox.shrink(),
    );
  }
}
