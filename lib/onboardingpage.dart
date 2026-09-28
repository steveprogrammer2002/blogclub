import 'package:blogclub/data.dart';
import 'package:blogclub/gen/assets.gen.dart';
import 'package:blogclub/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:blogclub/MyHomePage.dart';

class Onboardingpage extends StatefulWidget {
  const new({super.key});

  @override
  State<Onboardingpage> createState() => _OnboardingpageState();
}

class _OnboardingpageState extends State<Onboardingpage> {
  int page = 0;
  final _databoard = AppDatabase.itemboard;
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              children: [
                Assets.img.onboarding.onboarding.image(fit: BoxFit.cover),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32),
                        topRight: Radius.circular(32),
                      ),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          color: Colors.black.withAlpha(50),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(32),
                      child: Column(
                        children: [
                          Expanded(
                            child: PageView.builder(
                              onPageChanged: (index) {
                                setState(() {
                                  page = index;
                                });
                              },
                              itemCount: _databoard.length,
                              controller: _pageController,
                              itemBuilder: (context, index) {
                                final _datatext = _databoard[index];
                                return Column(
                                  children: [
                                    Text(
                                      _datatext.boardtitle,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineLarge,
                                    ),
                                    SizedBox(height: 15),
                                    Text(
                                      _datatext.boarddescription,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall!
                                          .copyWith(fontSize: 18),
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SmoothPageIndicator(
                                controller: _pageController,
                                count: _databoard.length,
                                axisDirection: Axis.horizontal,
                                effect: ExpandingDotsEffect(),
                              ),
                              ElevatedButton(
                                style: ButtonStyle(
                                  minimumSize: WidgetStateProperty.all(
                                    Size(100, 50),
                                  ),
                                  shape: WidgetStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadiusGeometry.circular(10),
                                    ),
                                  ),
                                  backgroundColor: WidgetStatePropertyAll(
                                    Colors.blue,
                                  ),
                                ),
                                onPressed: () {
                                  if (page < _databoard.length - 1) {
                                    _pageController.nextPage(
                                      duration: Duration(milliseconds: 600),
                                      curve: Curves.decelerate,
                                    );
                                  } else {
                                    print("Navigation");
                                    Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                        builder: ((context) {
                                          return MyHomePage();
                                        }),
                                      ),
                                    );
                                  }
                                },
                                child: Icon(
                                  page == _databoard.length - 1
                                      ? CupertinoIcons.check_mark
                                      : CupertinoIcons.arrow_right,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
