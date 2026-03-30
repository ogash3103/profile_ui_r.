import 'package:flutter/material.dart';

import 'component/info_block.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.deepOrange,
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      'R.',
                      style: TextStyle(
                        fontSize: 420,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        height: 0.9,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),

          Expanded(
            flex: 1,
            child: Container(
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 28),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Rayan Golf is a film director and photographer whose work covers two decades of documenting music, art, fashion, and celebrity.",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        height: 1
                      ),
                    ),

                    SizedBox(height: 90,),
                    // Studio
                    InfoBlock(
                      label: "Studio:",
                      lines: ["Rayangolf@gmail.com", "(+351) 372 77 83"],
                    ),
                    const SizedBox(height: 20),

                    // Social
                    InfoBlock(label: "Social:", lines: ["Instagram"]),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

