import 'package:easycharge/screens/AppBar.dart';
import 'package:easycharge/screens/drawer.dart';
import 'package:flutter/material.dart';
import 'package:easycharge/services/database.dart';

class CardImages extends StatefulWidget {
  @override
  State<CardImages> createState() => _CardImagesState();
}

class _CardImagesState extends State<CardImages> {
  List<Widget> Images_date = [];
  @override
  Widget build(BuildContext context) {
    final Map Images = ModalRoute.of(context)?.settings.arguments as Map;

    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: Appbar(),
        endDrawer: drawer(),
        body: Padding(
            padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
                child: Column(
              children: Images_date,
            ))),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.show_chart),
          onPressed: () async {
            ImageDatabase images_con = ImageDatabase();
            await images_con.images_func(Images['dates'], Images['images']);
            setState(() {
              Images_date = images_con.Images_date_con;
            });
          },
        ));
  }
}
