import 'package:ect/views/customer_home/nav_home/customer_profile/all_tab_bar.dart';
import 'package:flutter/material.dart';
import '../../../../Constants/colors.dart';

class CustomerOrderScreen extends StatefulWidget {
  const CustomerOrderScreen({Key? key}) : super(key: key);

  @override
  State<CustomerOrderScreen> createState() => _CustomerOrderScreenState();
}

class _CustomerOrderScreenState extends State<CustomerOrderScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
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
          TabBar(
            isScrollable: true,
            indicatorColor: iconColor,
            labelColor: customBlack,
            controller: _tabController,
            tabs: const [
              Tab(text: 'All'),
              Tab(text: 'To Pay'),
              Tab(text: 'To Ship'),
              Tab(text: 'To Receive'),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                AllTabScreen(),
                Center(child: Text('Tab 2 Content')),
                Center(child: Text('Tab 3 Content')),
                Center(child: Text('Tab 4 Content')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
