import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran/core/function/list_quran_text.dart';
import 'package:quran/core/function/list_surah_details.dart';
import 'package:quran/screens/home/widget/animated_container.dart';
import 'home_controller.dart';
import 'widget/drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

    return ChangeNotifierProvider(
      create: (context) => QuranModel(),
      child: Consumer<QuranModel>(
        builder: (context, value, child) => Scaffold(
          key: scaffoldKey,
          // appBar: value.active == 0 ? null : AppBar(),
          endDrawer: const DrawerWidget(),
          body: GestureDetector(
              onTap: () {
                print("index is __________${value.i}");
                value.changeState();
              },
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    InkWell(
                        child: SingleChildScrollView(
                      child: Column(
                        children: [
                          for (int i = 0; i < surah[value.i]['id']; i++)
                            Text("__________________________________")
                          // Center(
                          //   child: Text(
                          //     quranText['surah_number'][i].toString(),
                          //   ),
                          // ),
                        ],
                      ),
                    )
                        //  ListView.builder(
                        //   itemCount: 3,
                        //   itemBuilder: (context, index) => Container(
                        //     padding: const EdgeInsets.symmetric(vertical: 10),
                        //     child: Center(
                        //       child: Text(
                        //         quranText[index]['content'],
                        //         style: const TextStyle(fontSize: 20),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        ),
                    // if (value.active != 0)
                    WidgetAnimatedContainer(
                      scaffoldKey: scaffoldKey,
                      heightContainer: value.heightContainer,
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
