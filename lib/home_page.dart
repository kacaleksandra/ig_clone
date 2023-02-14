import 'package:flutter/material.dart';
import 'main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              SizedBox(width: 10),
              Image.asset(
                'images/ig_text.png',
                height: 37,
              ),
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite_border,
                )),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.send),
            ),
          ],
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            //stories
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    6,
                    (index) => Container(
                      padding: EdgeInsets.all(10),
                      child: CircleAvatar(
                        radius: 32,
                      ),
                    ),
                  ),
                ))
          ],
        )));
  }
}
