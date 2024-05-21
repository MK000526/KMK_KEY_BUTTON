import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:bank_app/src/key_button.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final List _key = [
    [
      "7",
      "8",
      "9",
    ],
    [
      "4",
      "5",
      "6",
    ],
    [
      "1",
      "2",
      "3",
    ],
    ["AC", "0", Icons.arrow_back]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("송금하기"),
        titleTextStyle: (TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        )),
        leading: const BackButton(
          color: Colors.black,
        ),
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "보낼 금액을 입력하세요!",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              _resultView(),
              _keyButtonView(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _resultView() {
    return Expanded(
      child: Container(
        alignment: Alignment.center,
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "0원",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.w500, color: Colors.black),
          ),
        ),
      ),
    );
  }

  Widget _keyButtonView() {
    return Column(
      children: List.generate(
          _key.length,
          (y) => Row(
                children: List.generate(
                  _key[y].length,
                  (x) => Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: KeyButton(
                        label: _key[y][x],
                        onTap: () {},
                      ),
                    ),
                  ),
                ),
              )),
    );
  }
}
