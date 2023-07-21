import 'package:db_shop/presentation/pages/home/homescreen.dart';
import 'package:db_shop/presentation/widgets/box_button.dart';
import 'package:db_shop/utils/constants.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              // background image part
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/gadgets.jpg")),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  Text("Deep Byte",
                      style: whiteText.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                      )),
                  Text("Get what you need",
                      style: whiteText.copyWith(
                        fontSize: 13,
                        wordSpacing: 3,
                      )),
                  const Spacer(),

                  // continue button - will navigate to homescreen..
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ));
                    },
                    child: BoxButton(
                      child: Text("Continue",
                          style:
                              whiteText.copyWith(fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              ),
            ),
          )),
          const SizedBox(
            height: 50,
            child: Center(child: Text("Terms of Service")),
          ),
        ],
      ),
    );
  }
}
