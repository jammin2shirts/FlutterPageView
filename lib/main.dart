import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MyPageView(),
        backgroundColor: Color.fromARGB(255, 63, 60, 60),
      ),
    );
  }
}

class MyPageView extends StatefulWidget {
  const MyPageView({super.key});

  @override
  State<MyPageView> createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> {
  final PageController controller = PageController();
  static dynamic currentPageValue = 0.0;
  List pageViewItem = [
    page(currentPageValue, Colors.tealAccent),
    page(2, Colors.amber),
    page(3, Colors.cyan),
  ];

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {
        currentPageValue = controller.page!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: pageViewItem.length,
      controller: controller,
      itemBuilder: (context, position) {
        return Transform(
          transform: Matrix4.identity()..rotateX(currentPageValue - position),
          child: pageViewItem[position],
        );
      },
    );
  }
}

Widget page(var pageno, Color color) {
  return Container(
    width: double.infinity,
    height: double.infinity,
    color: color,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Icon(
          Icons.pages,
          color: Colors.white,
        ),
        Text("$pageno, Swipe right or left"),
        const Icon(
          Icons.arrow_right,
          color: Colors.white,
        )
      ],
    ),
  );
}
