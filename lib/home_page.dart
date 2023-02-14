import 'package:flutter/material.dart';
import 'main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> profileImages = [
    "https://images.unsplash.com/photo-1543466835-00a7907e9de1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZG9nfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1575859431774-2e57ed632664?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjN8fGRvZ3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1517849845537-4d257902454a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZG9nfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1587300003388-59208cc962cb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8ZG9nfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1552053831-71594a27632d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8ZG9nfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1588943211346-0908a1fb0b01?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGRvZ3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"
  ];
  List<String> photos = ["https://images.unsplash.com/photo-1581888227599-779811939961?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzB8fGRvZ3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1597633544424-4da83804df40?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDR8fGRvZ3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60", "https://images.unsplash.com/photo-1530126483408-aa533e55bdb2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjZ8fGRvZ3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60", "https://images.unsplash.com/photo-1548199973-03cce0bbc87b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjR8fGRvZ3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"];
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
                icon: const Icon(
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
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () => print("test"),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 38,
                                  backgroundColor: Colors.black87,
                                  child: CircleAvatar(
                                      radius: 36,
                                      child: Stack(children: const [
                                        Align(
                                            alignment: Alignment.bottomRight,
                                            child: CircleAvatar(
                                              radius: 14,
                                              backgroundColor: Colors.black87,
                                              child: CircleAvatar(
                                                radius: 12,
                                                backgroundColor: Colors.blue,
                                                child: Icon(Icons.add),
                                              ),
                                            ))
                                      ])),
                                ),
                                const SizedBox(height: 5),
                                const Text('Twoja relacja',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12))
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 5),
                      ],
                    ),
                    Row(
                      children: List.generate(
                        5,
                        (index) => Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 38,
                                backgroundImage: AssetImage('images/story.jpg'),
                                child: CircleAvatar(
                                  radius: 36,
                                  backgroundColor: Colors.black87,
                                  child: CircleAvatar(
                                    radius: 32,
                                    backgroundImage:
                                        NetworkImage(profileImages[index]),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 5),
                              const Text("name",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
            // DIVIDER
            const Divider(color: Color.fromARGB(255, 85, 85, 85), height: 1),
            Column(
                children: List.generate(
                    4,
                    (index) => Column(
                          children: [
                            //HEADER OF POST
                            Row(
                              children: [
                                Container(
                                    padding: EdgeInsets.all(9),
                                    child: CircleAvatar(
                                radius: 16,
                                backgroundImage: AssetImage('images/story.jpg'),
                                child: CircleAvatar(
                                  radius: 15,
                                  backgroundColor: Colors.black87,
                                  child: CircleAvatar(
                                    radius: 13,
                                    backgroundImage:
                                        NetworkImage(profileImages[index]),
                                  ),
                                ),
                              ),),
                                const Text('name',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 13)),
                                Spacer(),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.more_horiz))
                              ],
                            ),
                            //IMAGE
                            Image.network(photos[index]),
                          ],
                        )))
          ],
        )));
  }
}
