import 'package:flutter/material.dart';

class WidgetAnimatedContainer extends StatelessWidget {
  final double heightContainer;
  const WidgetAnimatedContainer({
    super.key,
    required this.scaffoldKey,
    required this.heightContainer,
  });

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      alignment: Alignment.topRight,
      duration: const Duration(milliseconds: 300),
      height: heightContainer,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Color(0xffD8D2C2),
      ),
      child: heightContainer == 0
          ? null
          : TextButton(
              onPressed: () {
                scaffoldKey.currentState!.openEndDrawer();
              },
              child: Icon(
                Icons.keyboard_double_arrow_left_sharp,
                color: Colors.green[800],
              )),
    );
  }
}
