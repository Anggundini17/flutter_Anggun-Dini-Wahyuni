import 'package:flutter/material.dart';
import '../class/icon_list.dart';

class GridViewFlutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView'),
      ),
      body: GridView.builder(
        itemCount: iconData.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          childAspectRatio: 1.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          // final icon = iconData[index];
          // final icon = iconsList.length;
          return Column(
            children: [
              Container(
                margin: EdgeInsets.all(30.0),
                child: CircleAvatar(
                  radius: 15,
                  child: iconData[index],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
