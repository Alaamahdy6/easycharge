import 'package:easycharge/screens/AppBar.dart';
import 'package:easycharge/screens/drawer.dart';
import 'package:flutter/material.dart';
import 'package:easycharge/services/options_info.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Appbar(),
        endDrawer: drawer(),
        body: Padding(
            padding: const EdgeInsets.all(7),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(7),
                  child: Container(
                    padding: const EdgeInsets.all(7),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.purple.shade300),
                        color: Colors.purple.shade100),
                    child: Column(
                      children: [
                        Container(
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(
                                team_members['personal_iamge'][index]),
                          ),
                        ),
                        Container(
                            padding: const EdgeInsets.all(6),
                            child: Text(team_members['names'][index],
                                style: const TextStyle(
                                    fontSize: 18.0, color: Colors.black)))
                      ],
                    ),
                  ),
                );
              },
              itemCount: team_members['names'].length,
            )));
  }
}
