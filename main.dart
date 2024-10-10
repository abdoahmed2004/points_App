import 'package:flutter/material.dart';

void main() {
  runApp(basketball_points());
}

class basketball_points extends StatefulWidget {
  const basketball_points({super.key});

  @override
  State<basketball_points> createState() => _basketball_pointsState();
}

class _basketball_pointsState extends State<basketball_points> {
  @override
  int team1 = 0;
  int team2 = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Points App",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "Team 1",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 32,
                      ),
                    ),
                    Text(
                      "$team1",
                      style: TextStyle(
                        fontSize: 150,
                      ),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            foregroundColor: Colors.black,
                            fixedSize: Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            team1++;
                          });
                        },
                        child: Text("Add 1 point")),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            foregroundColor: Colors.black,
                            fixedSize: Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            team1 += 2;
                          });
                        },
                        child: Text("Add 2 points")),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            foregroundColor: Colors.black,
                            fixedSize: Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            team1 += 3;
                          });
                        },
                        child: Text("Add 3 points")),
                  ],
                ),
                SizedBox(
                  height: 500,
                  child: VerticalDivider(
                    color: Colors.black,
                    thickness: 1,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "Team 2",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 32,
                      ),
                    ),
                    Text(
                      "$team2",
                      style: TextStyle(
                        fontSize: 150,
                      ),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            foregroundColor: Colors.black,
                            fixedSize: Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            team2++;
                          });
                        },
                        child: Text("Add 1 point")),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            foregroundColor: Colors.black,
                            fixedSize: Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            team2 += 2;
                          });
                        },
                        child: Text("Add 2 points")),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            foregroundColor: Colors.black,
                            fixedSize: Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            team2 += 3;
                          });
                        },
                        child: Text("Add 3 points")),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    foregroundColor: Colors.black,
                    fixedSize: Size(150, 50)),
                onPressed: () {
                  setState(() {
                    team1 = 0;
                    team2 = 0;
                  });
                },
                child: Text("Reset")),
          ],
        ),
      ),
    );
  }
}
