import 'package:flutter/material.dart';

import '../../../../Constants/colors.dart';

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar tabBar;

  _SliverAppBarDelegate(this.tabBar);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.2,
      margin: const EdgeInsets.only(
        top: 10.0,
        left: 10.0,
        right: 10.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: cardColor,
      ),
      child: Center(
        child: tabBar,
      ),
    );
  }

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  bool shouldRebuild(covariant _SliverAppBarDelegate oldDelegate) {
    return false;
  }
}

class SellerTabBar extends StatelessWidget {
  const SellerTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      delegate: _SliverAppBarDelegate(
        TabBar(
          labelStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
          isScrollable: true,
          indicatorColor: iconColor,
          indicatorSize: TabBarIndicatorSize.tab,
          indicator: UnderlineTabIndicator(
            borderSide: const BorderSide(
              width: 3.0, // Adjust the width of the indicator
              color: iconColor, // Set the color of the indicator
            ),
            insets: const EdgeInsets.symmetric(
              horizontal: 16.0,
            ), // Adjust the insets of the indicator
            borderRadius: BorderRadius.circular(
              10.0,
            ), // Adjust the corner radius of the indicator
          ),
          labelColor: customBlack,
          tabs: const [
            Tab(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Tailors'),
              ),
            ),
            Tab(
              child: Align(
                alignment: Alignment.centerRight,
                child: Text('Fabrics/Clothes'),
              ),
            ),
          ],
        ),
      ),
      floating: true,
      pinned: true,
    );
  }
}
