import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> interests = [
      'Football',
      'Music',
      'Travelling',
      'Fashion',
      'Reading romantic novels',
      'Video games',
      'History'
    ];
    return Scaffold(
      backgroundColor: const Color(0xff15151f),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 120),
              SizedBox(
                height: 120,
                width: 120,
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Container(
                      height: 120,
                      width: 120,
                      padding: const EdgeInsets.all(5),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xff1d1d2a),
                      ),
                      child: const CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/image2.webp',
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: const Color(0xff141520),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: const Icon(
                            Icons.edit_sharp,
                            size: 18,
                            color: Colors.black,
                            // color: Colors.grey.shade700,
                          ),
                        ),
                      ),
                      // child: Container(
                      //   padding: const EdgeInsets.all(5),
                      //   decoration: BoxDecoration(
                      //     color: const Color(0xff141520),
                      //     borderRadius: BorderRadius.circular(20),
                      //   ),
                      //   child: Container(
                      //     padding: const EdgeInsets.symmetric(
                      //         horizontal: 8, vertical: 3),
                      //     decoration: BoxDecoration(
                      //       color: const Color(0xff29422d),
                      //       borderRadius: BorderRadius.circular(20),
                      //     ),
                      //     child: const Text(
                      //       'Change',
                      //       style: TextStyle(fontSize: 14),
                      //     ),
                      //   ),
                      // ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                '@john_doe123',
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                '+233551282222',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'johndoe123@gmail.com',
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xff656573),
                ),
              ),
              const SizedBox(height: 40),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Interests',
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Wrap(
                  spacing: 15,
                  runSpacing: 15,
                  children: List.generate(
                    interests.length,
                    (index) => Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.white),
                      ),
                      child: Text(
                        interests[index],
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
