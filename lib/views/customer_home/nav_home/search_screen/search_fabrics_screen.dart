import 'package:flutter/material.dart';
import '../../homepage_categories/clothes/clothes_card.dart';
import '../../homepage_categories/fabric_collection/fabric_widget.dart';

class SearchFabric extends StatefulWidget {
  const SearchFabric({super.key});

  @override
  State<SearchFabric> createState() => _SearchFabricState();
}

class _SearchFabricState extends State<SearchFabric> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return ListView(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 10.0, left: 20.0, right: 10.0),
          child: Text(
            "Fabrics",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 10.0,
          ),
          child: SizedBox(
            height: size.height * 0.29,
            width: size.width,
            child: ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const FabricItemWidget();
              },
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 10.0, left: 20.0, right: 10.0),
          child: Text(
            "Clothes",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              childAspectRatio: 0.65,
            ),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 6,
            itemBuilder: (context, index) {
              return const ClothesCard();
            },
          ),
        ),
        const SizedBox(
          height: 30.0,
        ),
      ],
    );
  }
}
