// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// TODO: ใส่รหัสนักศึกษาที่ค่าสตริงนี้
const studentId = '630710386';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 20.0,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg_colorful.jpg"),
              opacity: 0.6,
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Good Morning',
                  textAlign: TextAlign.center, style: textTheme.headlineMedium),
              Text(studentId,
                  textAlign: TextAlign.center,
                  style: textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.black87)),
              Spacer(),
              _buildQuizView(),
              Spacer(),
              _buildButtonPanel(),
              SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }

  _buildQuizView() {
    // TODO: build UI
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.symmetric(horizontal: 18, vertical: 50),
          decoration: BoxDecoration(
              border: Border.all(width: 1.8),
              color: Colors.white,
              borderRadius: BorderRadius.circular(25)),
          child: Column(
            children: [
              Text(
                'Question 1 of 30',
                style: TextStyle(fontSize: 18.0),
              ),
              SizedBox(
                width: 30.0,
                height: 30.0,
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        border: Border.all(width: 1.8),
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(25)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'What is the longest river in the world?',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w100),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1.8),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Text(
                              'A.  Amazon River',
                              style: TextStyle(fontSize: 15.0),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      border: Border.all(width: 1.8),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              'B.  Nile River',
                              style: TextStyle(fontSize: 15.0),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1.8),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              'C.  Mississippi River',
                              style: TextStyle(fontSize: 15.0),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1.8),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              'D.  Yangtze River',
                              style: TextStyle(fontSize: 15.0),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  _buildButtonPanel() {
    // TODO: build UI
    return Center(child: Text('TODO: build UI'));
  }
}
