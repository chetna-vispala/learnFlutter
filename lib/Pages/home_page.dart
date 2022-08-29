import 'package:flutter/material.dart';
import 'package:learn_datatype/models/catalog.dart';
import 'package:learn_datatype/widget/drawer.dart';
import 'package:learn_datatype/widget/item_widget.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Chetna";

  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemsWidget(
              item: dummyList[index],
            );
          },
        ),
      ),
      drawer: const Mydrawer(),
    );
  }
}
