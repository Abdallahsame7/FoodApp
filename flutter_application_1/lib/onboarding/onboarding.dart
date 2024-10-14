import 'package:flutter/material.dart';
import 'package:flutter_application_1/Registration/login.dart';
import 'package:flutter_application_1/custom/bottom.dart';
import 'package:flutter_application_1/onboarding/screen1.dart';
import 'package:flutter_application_1/onboarding/screen2.dart';

class Onboarding extends StatefulWidget {
  Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  void onPageChanged(int page) {
    setState(() {
      _currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: onPageChanged,
            children: const [
              Screen1(),
              Screen2(),
            ],
          ),
          Positioned(
            bottom: 30, 
            left: 0,
            right: 0,
            child: Column(
              children: [
                _buildNextButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Widget _buildDot(int index) {
  //   return Container(
  //     margin: const EdgeInsets.symmetric(horizontal: 4.0),
  //     height: 8,
  //     width: _currentPage == index ? 16 : 8,
  //     decoration: BoxDecoration(
  //       color: _currentPage == index ? Colors.green : Colors.grey,
  //       borderRadius: BorderRadius.circular(4),
  //     ),
  //   );
  // }

  Widget _buildNextButton() {
    return InkWell(
      onTap: () {
        if (_currentPage == 0) {
          _pageController.nextPage(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        } else {
          Navigator.pushReplacement(context , MaterialPageRoute(builder: (context) => Login(),));
        }
      },
      child: custombottom(name: _currentPage == 1 ? "Get Started" : "Next",)
    );
  }
}
