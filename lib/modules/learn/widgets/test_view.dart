import 'package:flutter/material.dart';

class TestView extends StatefulWidget {
  const TestView({super.key});

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends State<TestView> {
  bool isOpen = false;
  bool showButtons = false;
  bool isButton1Pressed = false;
  bool isButton2Pressed = false;
  bool isButton3Pressed = false;
  bool isButton4Pressed = false;

  void pressButton(int buttonNumber) {
    setState(() {
      isButton1Pressed = false;
      isButton2Pressed = false;
      isButton3Pressed = false;
      isButton4Pressed = false;

      switch (buttonNumber) {
        case 1:
          isButton1Pressed = true;
          break;
        case 2:
          isButton2Pressed = true;
          break;
        case 3:
          isButton3Pressed = true;
          break;
        case 4:
          isButton4Pressed = true;
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return showButtons // Kiểm tra giá trị của biến showButtons
        ? Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      const Text('Chua nho'),
                      TextButton(
                        onPressed:
                            isButton1Pressed ? null : () => pressButton(1),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            boxShadow: kElevationToShadow[2],
                            color: Colors.white,
                          ),
                          height: 74,
                          width: 74,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'AGAIN',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                '< 1m',
                                style: TextStyle(color: Colors.black),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text('Ko chac chan'),
                      TextButton(
                        onPressed:
                            isButton1Pressed ? null : () => pressButton(2),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            boxShadow: kElevationToShadow[2],
                            color: Colors.white,
                          ),
                          height: 74,
                          width: 74,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'HARD',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                '< 6m',
                                style: TextStyle(color: Colors.black),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text('Da nho'),
                      TextButton(
                        onPressed:
                            isButton1Pressed ? null : () => pressButton(3),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            boxShadow: kElevationToShadow[2],
                            color: Colors.white,
                          ),
                          height: 74,
                          width: 74,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'GOOD',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                '< 10m',
                                style: TextStyle(color: Colors.black),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text('Qua de'),
                      TextButton(
                        onPressed:
                            isButton1Pressed ? null : () => pressButton(4),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            boxShadow: kElevationToShadow[2],
                            color: Colors.white,
                          ),
                          height: 74,
                          width: 74,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'EASY',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                '< 4d',
                                style: TextStyle(color: Colors.black),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 17),
              if (isButton1Pressed)
                const Text(
                  'Nhac lai sau toi da 1 phut',
                  style: TextStyle(fontSize: 20),
                ),
              if (isButton2Pressed)
                const Text(
                  'Nhac lai sau toi da 6 phut',
                  style: TextStyle(fontSize: 20),
                ),
              if (isButton3Pressed)
                const Text(
                  'Nhac lai sau toi da 10 phut',
                  style: TextStyle(fontSize: 20),
                ),
              if (isButton4Pressed)
                const Text(
                  'Nhac lai sau toi da 4 ngay',
                  style: TextStyle(fontSize: 20),
                ),
            ],
          )
        : TextButton(
            onPressed: () {
              setState(() {
                isOpen = !isOpen;
                showButtons =
                    true; // Hiển thị nút nhỏ khi nút "KIEM TRA DAP AN" được bấm
              });
            },
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    boxShadow: kElevationToShadow[2],
                    color: Colors.red,
                  ),
                  height: 60,
                  width: double.infinity,
                  child: const Center(
                    child: Text(
                      'KIEM TRA DAP AN',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}
