import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Instagram app',
        home: MyHomePage(),
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.black87,
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
            appBarTheme: const AppBarTheme(
                elevation: 1,
                color: Colors.black87,
                )));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomePage(),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black87,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          IconButton(
            icon: Icon(
              currentPage == 0 ? Icons.home : Icons.home_outlined,
            ),
            onPressed: () {
              setState(() {
                currentPage = 0;
              });
            },
          ),
          IconButton(
            iconSize: currentPage == 1 ? 30 : 26,
            icon: Icon(
              Icons.search,
            ),
            onPressed: () {
              setState(() {
                currentPage = 1;
              });
            },
          ),
          IconButton(
            icon: Icon(
              currentPage == 2 ? Icons.add_box : Icons.add_box_outlined,
            ),
            onPressed: () {
              setState(() {
                currentPage = 2;
              });
            },
          ),
          IconButton(
            icon: Icon(
              currentPage == 3
                  ? Icons.smart_display
                  : Icons.smart_display_outlined,
            ),
            onPressed: () {
              setState(() {
                currentPage = 3;
              });
            },
          ),
          IconButton(
            icon: Icon(
              currentPage == 4 ? Icons.person : Icons.person_outline,
            ),
            onPressed: () {
              setState(() {
                currentPage = 4;
              });
            },
          ),
        ]),
      ),
    );
  }
}
