import 'package:dicee/controller/home_screen_controller.dart';
import 'package:dicee/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  HomeScreenController homeScreenController = Get.put(HomeScreenController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Dicee'),
          elevation: 5,
          centerTitle: true,
        ),
        backgroundColor: Colors.red,
        body: Center(
          child: Obx(() => Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                     style: textButtonStyle,
                    onPressed: () {
                      homeScreenController.dice1ValueChange();
                    },
                    child: Image.asset(
                      "images/dice${homeScreenController.dice1Value.value.toString()}.png",
                      width: (MediaQuery.of(context).size.width / 2) - 10,
                    ),
                  ),
                  // SizedBox(
                  //   width: 10,
                  // ),
                  TextButton(
                    style: textButtonStyle,
                    onPressed: () {
                      homeScreenController.dice2ValueChange();
                    },
                    child: Image.asset(
                      "images/dice${homeScreenController.dice2Value.value.toString()}.png",
                      width: (MediaQuery.of(context).size.width / 2) - 10,
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
