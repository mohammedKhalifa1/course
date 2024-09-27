import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/function/list_surah_details.dart';
import '../home_controller.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<QuranModel>(
      builder: (context, value, child) => Drawer(
        child: ListView.builder(
          itemCount: surah.length,
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              value.changeIndex(surah[index]["id"]);
            },
            child: ListTile(
              title: Center(child: Text(surah[index]['arabic'])),
              subtitle: Text(" اياتها ${surah[index]['aya'].toString()}"),
              trailing: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.green),
                  child: Text(
                    surah[index]['id'].toString(),
                    style: const TextStyle(color: Colors.white),
                  )),
            ),
          ),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    int age = 10;
    return Text("my age is $age");
  }
}
