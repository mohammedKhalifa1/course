import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:quran/core/class/image_class.dart';
import 'package:quran/core/class/route.dart';
import 'package:quran/core/class/route_name.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode, builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // ignore: deprecated_member_use
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: const App(),
      routes: routes,
    );
  }
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    Future.delayed(
        const Duration(
          seconds: 2,
        ), () {
      Navigator.pushReplacementNamed(context, AppRoute.homePage);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(ImageApp.logo),
      ),
    );
  }
}

// //________________________
// class AnimatedContainerExample extends StatefulWidget {
//   @override
//   _AnimatedContainerExampleState createState() =>
//       _AnimatedContainerExampleState();
// }

// class _AnimatedContainerExampleState extends State<AnimatedContainerExample>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _animation;

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       vsync: this,
//       duration: Duration(seconds: 1),
//     );

//     _animation = Tween<double>(begin: -100.0, end: 0.0).animate(_controller);

//     // تشغيل animation تلقائياً
//     _controller.forward();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // الخلفية
//           Container(
//             color: Colors.blue,
//           ),
//           AnimatedPositioned(
//             duration: Duration(seconds: 2),
//             top: _animation.value,
//             left: 0,
//             right: 0,
//             child: Container(
//               height: 100,
//               color: Colors.white,
//               child: Center(child: Text('Hello, World!')),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
// }
