import 'package:ect/views/customer_home/nav_home/customer_profile/all_tab_bar.dart';
import 'package:flutter/material.dart';
import '../../../../Constants/colors.dart';

class SellerOrderScreen extends StatefulWidget {
  const SellerOrderScreen({Key? key}) : super(key: key);

  @override
  State<SellerOrderScreen> createState() => _SellerOrderScreenState();
}

class _SellerOrderScreenState extends State<SellerOrderScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: customPurple,
        title: const Text(
          "Orders",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 10.0,
            ),
            width: double.infinity,
            decoration: BoxDecoration(
              color: cardColor,
              borderRadius: BorderRadius.circular(
                20.0,
              ),
            ),
            child: Center(
              child: TabBar(
                isScrollable: true,
                indicatorColor: iconColor,
                indicator: UnderlineTabIndicator(
                  borderSide: const BorderSide(
                    width: 3.0,
                    color: iconColor,
                  ),
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                ),
                indicatorSize: TabBarIndicatorSize.label,
                labelColor: customBlack,
                controller: _tabController,
                tabs: const [
                  Tab(text: 'Inprogress'),
                  Tab(text: 'Completed'),
                  Tab(text: 'Cancelled'),
                ],
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                Center(child: Text('Tab 1 Content')),
                Center(child: Text('Tab 2 Content')),
                Center(child: Text('Tab 3 Content')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
