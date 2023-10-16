import 'package:flutter/material.dart';

class FlutterWidget extends StatefulWidget {
  const FlutterWidget({super.key});

  @override
  State<FlutterWidget> createState() => _FlutterWidgetState();
}

class _FlutterWidgetState extends State<FlutterWidget> {
  int index = 0;
  Color foregroundColor = Colors.grey;

  void changeForegroundColor() {
    setState(() {
      foregroundColor = index % 2 == 0 ? Colors.pink : Colors.grey;
      index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mission 1"),
        ),
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.white],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 500,
                    height: 200,
                    child: Image(
                      image: AssetImage('images/pig1.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  GridView.count(
                    crossAxisCount: 4,
                    shrinkWrap: true,
                    children: [
                      Center(
                        child: Container(
                          width: 80,
                          height: 80,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image(
                              image: AssetImage('images/pig2.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Container(
                          width: 80,
                          height: 80,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image(
                              image: AssetImage('images/pig3.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Container(
                          width: 80,
                          height: 80,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image(
                              image: AssetImage('images/pig4.jpeg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Container(
                          width: 80,
                          height: 80,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image(
                              image: AssetImage('images/pig5.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Flexible(
                    flex: 1,
                    child: Column(
                      children: [
                        Text(
                          "Selamat Datang Ke Dunia Babi",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Expanded(
                          child: ListView(
                            children: [
                              ListTile(
                                title: Text(
                                  'Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi',
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  'Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi',
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  'Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi',
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  'Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi',
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  'Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi',
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  'Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi',
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  'Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi',
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  'Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi',
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  'Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi Babi',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 10,
              right: 10,
              child: FloatingActionButton(
                onPressed: () {
                  changeForegroundColor();
                },
                mini: true,
                backgroundColor: Colors.white,
                foregroundColor: foregroundColor,
                child: Icon(
                  Icons.favorite,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
